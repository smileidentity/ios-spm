import Foundation
import Network
import UseSmileID

/// The Smile ID backend, in process, for a flow under test. Every `/v3` job
/// endpoint answers the canonical accepted-job payload unless a test scripts something else with
/// `respond(_:with:)`, and every request is recorded, decoded, in `requests`. It listens on
/// loopback only. A `UseSmileIDTest` makes one and closes it.
public final class UseSmileIDTestServer: @unchecked Sendable {
  /// Posted on the main queue after each request is recorded, so a view can show the latest.
  public static let didRecordRequest = Notification.Name("UseSmileIDTestServer.didRecordRequest")

  static let submissionPaths = [
    "/v3/enhanced_kyc",
    "/v3/registration",
    "/v3/authentication",
    "/v3/biometric_kyc",
    "/v3/document_verification",
    "/v3/enhanced_document_verification",
    "/v3/residency_document_verification"
  ]

  private let listener: NWListener
  // Network delivers a listener's and its connections' events on a queue it is given.
  private let queue = DispatchQueue(label: "com.usesmileid.testing.server")
  private let lock = NSLock()
  private var recorded: [UseSmileIDTestRequest] = []
  private var scripted: [String: UseSmileIDTestResponse] = [:]
  private var state: ListenerState = .starting([])

  private enum ListenerState {
    case starting([CheckedContinuation<UInt16?, Never>])
    case ready(UInt16)
    case closed
  }

  /// Every request the flow made, in order.
  public var requests: [UseSmileIDTestRequest] {
    lock.withLock { recorded }
  }

  /// The requests to the `/v3` job endpoints: the job submissions.
  public var submissions: [UseSmileIDTestRequest] {
    requests.filter { request in Self.submissionPaths.contains { request.path.hasPrefix($0) } }
  }

  /// Makes `path` answer `response` from now on, instead of what it answers by default.
  public func respond(_ path: String, with response: UseSmileIDTestResponse) {
    lock.withLock { scripted[path] = response }
  }

  init() throws {
    let parameters = NWParameters.tcp
    parameters.requiredLocalEndpoint = .hostPort(host: .ipv4(.loopback), port: .any)
    listener = try NWListener(using: parameters)
    listener.stateUpdateHandler = { [weak self] state in self?.listenerChanged(state) }
    listener.newConnectionHandler = { [weak self] connection in self?.serve(connection) }
    listener.start(queue: queue)
  }

  /// Stops listening. Requests after this are refused before they leave the process.
  public func close() {
    let waiting: [CheckedContinuation<UInt16?, Never>] = lock.withLock {
      defer { state = .closed }
      if case .starting(let waiting) = state {
        return waiting
      }
      return []
    }
    waiting.forEach { $0.resume(returning: nil) }
    listener.cancel()
  }

  /// The port the server listens on once it is ready, or nil once it is closed or failed to start.
  func openPort() async -> UInt16? {
    await withCheckedContinuation { continuation in
      let answer: UInt16?? = lock.withLock {
        switch state {
        case .starting(let waiting):
          state = .starting(waiting + [continuation])
          return .none
        case .ready(let port):
          return .some(port)
        case .closed:
          return .some(nil)
        }
      }
      if let answer {
        continuation.resume(returning: answer)
      }
    }
  }

  /// Sends every request to this server, whatever its host, so a custom base URL can't reach a live
  /// backend from a test. Once the server is closed it refuses requests instead,
  /// naming the path and never printing the body.
  var router: Interceptor {
    Router(server: self)
  }

  private struct Router: Interceptor {
    let server: UseSmileIDTestServer

    func intercept(_ request: URLRequest, chain: InterceptorChain) async throws -> (URLResponse, Data) {
      let path = request.url?.path ?? "/"
      guard let port = await server.openPort(),
            let url = request.url,
            var components = URLComponents(url: url, resolvingAgainstBaseURL: false) else {
        throw UseSmileIDTestServerError.closed(path: path)
      }
      components.scheme = "http"
      components.host = "127.0.0.1"
      components.port = Int(port)
      var routed = request
      routed.url = components.url
      return try await chain.proceed(routed)
    }
  }

  private func listenerChanged(_ newState: NWListener.State) {
    let port: UInt16?
    switch newState {
    case .ready: port = listener.port?.rawValue
    case .failed, .cancelled: port = nil
    default: return
    }
    let waiting: [CheckedContinuation<UInt16?, Never>] = lock.withLock {
      guard case .starting(let waiting) = state else { return [] }
      state = port.map(ListenerState.ready) ?? .closed
      return waiting
    }
    waiting.forEach { $0.resume(returning: port) }
  }

  private func serve(_ connection: NWConnection) {
    connection.start(queue: queue)
    receive(connection, buffer: Data())
  }

  /// Reads until the head and its declared body have arrived, then answers.
  private func receive(_ connection: NWConnection, buffer: Data) {
    connection.receive(minimumIncompleteLength: 1, maximumLength: 1 << 20) { [weak self] data, _, isComplete, error in
      guard let self else { return }
      var buffer = buffer
      if let data {
        buffer.append(data)
      }
      if error != nil {
        connection.cancel()
      } else if let request = HTTPRequest(buffer) {
        answer(request, on: connection)
      } else if isComplete {
        connection.cancel()
      } else {
        receive(connection, buffer: buffer)
      }
    }
  }

  private func answer(_ request: HTTPRequest, on connection: NWConnection) {
    let recordedRequest = request.decoded
    let response: UseSmileIDTestResponse? = lock.withLock {
      recorded.append(recordedRequest)
      return scripted[request.path]
    }
    Task { @MainActor in NotificationCenter.default.post(name: Self.didRecordRequest, object: self) }
    let (status, body): (Int, String)
    switch response {
    case .none:
      let isSubmission = Self.submissionPaths.contains { request.path.hasPrefix($0) }
      (status, body) = (200, isSubmission ? Self.acceptedJob(request.path) : "{}")
    case .status(let code, let scriptedBody):
      (status, body) = (code, scriptedBody)
    case .tokenExpired:
      (status, body) = (401, #"{"code":"2205","error":"The token has expired"}"#)
    case .connectionDropped:
      connection.cancel()
      return
    }
    // Clients read the code, not the reason phrase, so one fixed phrase does for every status.
    let head = "HTTP/1.1 \(status) \(status == 200 ? "OK" : "Status")\r\nContent-Type: application/json\r\n"
      + "Content-Length: \(body.utf8.count)\r\nConnection: close\r\n\r\n"
    connection.send(content: Data((head + body).utf8), completion: .contentProcessed { _ in connection.cancel() })
  }

  private static func acceptedJob(_ path: String) -> String {
    let suffix = String(path.dropFirst()).replacingOccurrences(of: "/", with: "_")
    return #"{"job_id":"job_test_\#(suffix)","user_id":"user_test_0001","status":"Accepted","#
      + #""message":"Request accepted and queued for processing."}"#
  }
}

/// Why the test server refused a request.
public enum UseSmileIDTestServerError: Error, Equatable, CustomStringConvertible {
  /// The server was closed, so the request to `path` was refused rather than let out.
  case closed(path: String)

  public var description: String {
    switch self {
    case .closed(let path): "UseSmileIDTestServer is closed: refusing \(path)"
    }
  }
}

/// One request the flow made: its `path`, `headers` and decoded `parts`.
public struct UseSmileIDTestRequest: Equatable, Sendable {
  public let path: String
  public let headers: [String: String]
  /// A multipart body's parts by name, or a JSON body's top-level fields; empty for anything else.
  public let parts: [String: UseSmileIDTestPart]
}

/// One part of a request: text, or a file by its name and size. A file's bytes are never kept.
public enum UseSmileIDTestPart: Equatable, Sendable {
  /// A text part, or a JSON field, as text.
  case text(String)
  /// A file part.
  case file(fileName: String, size: Int)
}

/// What `UseSmileIDTestServer.respond(_:with:)` makes a path answer.
public enum UseSmileIDTestResponse: Equatable, Sendable {
  /// An HTTP `code` with `body`, in the API's error shape when it's an error.
  case status(code: Int, body: String)
  /// A `401`, which makes the SDK ask the partner's `onTokenExpired` for a new token.
  case tokenExpired
  /// The connection drops before an answer.
  case connectionDropped
}
