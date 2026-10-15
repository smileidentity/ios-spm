import Foundation
import UseSmileID
import UseSmileIDBridge

/// A flow under test, with no Smile ID backend and no subject in front of the camera. `server`
/// stands in for the backend, `scenario` for the person, and `token` for a `/v3/token` token.
///
/// A test starts only in a Debug build. Every type here exists in every configuration, so your
/// calls compile everywhere, but without `DEBUG` `fromLaunchArguments()` returns nil, `init` throws
/// and the scripted analyzers aren't compiled, so a launch argument can't turn a Release build
/// into a test run.
///
/// Start one from a UI test's launch argument with `fromLaunchArguments()`, once, when the app
/// launches, then wire it into the blocks your flow already writes:
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
  /// - Throws: `UseSmileIDTestError.notADebugBuild` outside a Debug build.
  public init(scenario: UseSmileIDTestScenario, documentAspectRatio: Double? = nil) throws {
    #if DEBUG
      self.scenario = scenario
      self.documentAspectRatio = documentAspectRatio
      server = try UseSmileIDTestServer()
    #else
      throw UseSmileIDTestError.notADebugBuild
    #endif
  }

  /// The test the app was launched for, or nil when it was launched without `scenarioArgument` or
  /// outside a Debug build. Make it once, when the app launches, and keep it: each test starts its
  /// own server.
  ///
  /// When the arguments ask for a test it can't give, because they name no scenario or its server
  /// can't start, it stops the app rather than return nil: the flow would otherwise run against
  /// your real backend in a run meant to be isolated.
  public static func fromLaunchArguments(
    _ arguments: [String] = ProcessInfo.processInfo.arguments
  ) -> UseSmileIDTest? {
    #if DEBUG
      do {
        return try launched(by: arguments)
      } catch {
        preconditionFailure("\(error)")
      }
    #else
      return nil
    #endif
  }

  /// The test `arguments` ask for, or nil when they ask for none.
  static func launched(by arguments: [String]) throws -> UseSmileIDTest? {
    func value(after argument: String) -> String? {
      arguments.firstIndex(of: argument).flatMap { index in
        arguments.indices.contains(index + 1) ? arguments[index + 1] : nil
      }
    }
    guard arguments.contains(scenarioArgument) else { return nil }
    let name = value(after: scenarioArgument) ?? ""
    guard let scenario = UseSmileIDTestScenario.byName[name]?() else {
      throw UseSmileIDTestError.unknownScenario(name)
    }
    let aspectRatio = value(after: documentAspectRatioArgument).flatMap(Double.init)
    return try UseSmileIDTest(scenario: scenario, documentAspectRatio: aspectRatio)
  }

  /// Routes every request the flow makes to `server`, whatever its host. Call it inside
  /// `network { $0.interceptors { } }`.
  @MainActor
  public func install(into interceptors: InterceptorConfigBuilder) {
    interceptors.add(server.router)
  }

  /// The scenario's scripted analyzers, for `ml.analyzers { }`: the face analyzer, and for a document
  /// scenario the document analyzer too. A document job captures a selfie as well, so a document
  /// scenario scripts it with `UseSmileIDTestScenario.selfieHappyPath`.
  public var analyzers: [CaptureTypeConfiguration] {
    #if DEBUG
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
    #else
      return []
    #endif
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

/// Why a test didn't start.
public enum UseSmileIDTestError: Error, Equatable, CustomStringConvertible {
  /// `UseSmileIDTesting` was built without `DEBUG`, as a Release build is, where no test starts.
  case notADebugBuild
  /// The launch arguments name no scenario `fromLaunchArguments()` knows.
  case unknownScenario(String)

  public var description: String {
    switch self {
    case .notADebugBuild: "UseSmileIDTesting starts a test only in a Debug build"
    case .unknownScenario(let name): "UseSmileIDTesting has no scenario named \"\(name)\""
    }
  }
}
