#if DEBUG
  import Foundation
  import UseSmileID
  import UseSmileIDBridge

  /// A v12 flow under test, with no subject in front of a camera and no Smile ID backend (kamera
  /// design 64). `server` stands in for the backend, `scenario` for the person, and `token` for a
  /// `/v3/token` token. Link this module into your app's Debug build only: every type in it is
  /// compiled under `DEBUG`, so a Release build links nothing.
  ///
  /// Start one from a UI test's launch argument with `fromLaunchArguments()`, then wire it into the
  /// blocks your flow already writes:
  ///
  /// ```swift
  /// builder.ml { ml in ml.analyzers { test.analyzers } }
  /// builder.network {
  ///   $0.config { config in config.token = test.token }
  ///   $0.interceptors { test.install(into: $0) }
  /// }
  /// ```
  ///
  /// and show `UseSmileIDTestReport(test:)`, which your UI test reads. A unit test hosted in the app
  /// reads `server` directly.
  public final class UseSmileIDTest: @unchecked Sendable {
    /// The launch argument `fromLaunchArguments()` reads: one of the `UseSmileIDTestScenario` names.
    public static let scenarioArgument = "-UseSmileIDTestScenario"
    /// The launch argument for `documentAspectRatio`, such as `0.71` for a passport.
    public static let documentAspectRatioArgument = "-UseSmileIDTestDocumentAspectRatio"

    public let scenario: UseSmileIDTestScenario

    /// A structurally valid token for the flow's `token`; the test server is the only one that sees it.
    public let token: String = UseSmileIDTest.makeToken()

    /// The backend, in process.
    public let server: UseSmileIDTestServer

    private let documentAspectRatio: Double?

    /// - Parameters:
    ///   - scenario: what the scripted analyzers report.
    ///   - documentAspectRatio: your document's width to height, as its document type gives it (a
    ///     passport is portrait, about 0.71), so a scripted document is framed the way the capture
    ///     screen expects; nil frames an ID card. Only a document scenario reads it.
    public init(scenario: UseSmileIDTestScenario, documentAspectRatio: Double? = nil) throws {
      self.scenario = scenario
      self.documentAspectRatio = documentAspectRatio
      server = try UseSmileIDTestServer()
    }

    /// The test the app was launched for, or nil when it was launched without `scenarioArgument`.
    public static func fromLaunchArguments(
      _ arguments: [String] = ProcessInfo.processInfo.arguments
    ) -> UseSmileIDTest? {
      func value(after argument: String) -> String? {
        arguments.firstIndex(of: argument).flatMap { index in
          arguments.indices.contains(index + 1) ? arguments[index + 1] : nil
        }
      }
      guard let name = value(after: scenarioArgument),
            let scenario = UseSmileIDTestScenario.byName[name]?() else { return nil }
      let aspectRatio = value(after: documentAspectRatioArgument).flatMap(Double.init)
      return try? UseSmileIDTest(scenario: scenario, documentAspectRatio: aspectRatio)
    }

    /// Routes every request the flow makes to `server` (design 64, D2). Call it inside
    /// `network { $0.interceptors { } }`.
    @MainActor
    public func install(into interceptors: InterceptorConfigBuilder) {
      interceptors.add(server.router)
    }

    /// The scenario's scripted analyzers, for `ml.analyzers { }`: the face analyzer, and for a document
    /// scenario the document analyzer too. A document job captures a selfie as well, so a document
    /// scenario scripts it with `UseSmileIDTestScenario.selfieHappyPath`.
    public var analyzers: [CaptureTypeConfiguration] {
      let script = scenario.script
      let selfie = script.captureType == ScriptedScenario.selfie ? script : UseSmileIDTestScenario.selfieHappyPath.script
      var configurations = [
        forCaptureType(.selfie) { $0.addAnalyzer(ScriptedFaceAnalyzer.Factory(scenario: selfie)) }
      ]
      if script.captureType == ScriptedScenario.document {
        let aspectRatio = documentAspectRatio
        configurations.append(forCaptureType(.document) {
          $0.addAnalyzer(ScriptedDocumentAnalyzer.Factory(scenario: script, aspectRatio: aspectRatio))
        })
      }
      return configurations
    }

    /// Stops the server; requests after this are refused.
    public func close() {
      server.close()
    }

    /// A JWT the SDK can decode (it reads `partner_id` and never checks the signature), expiring far in
    /// the future. Only the test server ever sees it.
    private static func makeToken() -> String {
      func part(_ raw: String) -> String {
        Data(raw.utf8).base64EncodedString()
          .replacingOccurrences(of: "+", with: "-")
          .replacingOccurrences(of: "/", with: "_")
          .replacingOccurrences(of: "=", with: "")
      }
      let header = part(#"{"alg":"HS256","typ":"JWT"}"#)
      let payload = part(#"{"partner_id":"test-partner","exp":4102444800}"#)
      return "\(header).\(payload).\(part("test-signature"))"
    }
  }
#endif
