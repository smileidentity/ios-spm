import UIKit
@_spi(CrashReportingSeam) import UseSmileIDBridge
internal import Sentry

/// The real, Sentry-backed crash reporting implementation. Lives in the source layer (ships via
/// SPM, compiled by the partner's own build) rather than in the compiled xcframework, so the
/// binary never embeds or links Sentry — see `UseSmileIDCrashReporting`'s doc comment for why.
///
/// `@objc`-named and `NSObject`-derived so `UseSmileIDCrashReporting` can find and instantiate it
/// via `NSClassFromString` on first use — nothing else needs to touch this type directly. Keep
/// the `@objc` name in sync with `UseSmileIDCrashReporting.handlerClassName`.
@objc(UseSmileIDSentryCrashReportingHandler)
final class UseSmileIDSentryCrashReportingHandler: NSObject, UseSmileIDCrashReportingHandler {
  /// Hardcoded so this module doesn't depend on `UseSmileIDMetadataFactory`
  /// (which lives in the main `UseSmileID` framework and would create a
  /// dependency cycle). Bump in lockstep with
  /// `UseSmileIDMetadataFactory.sdkVersion` at release time.
  private static let sdkVersion = "12.0.1"

  /// Substring matched against `package` / `function` of every stack frame
  /// to decide whether an event originated in SmileID code. Every SmileID
  /// type and binary image carries the `UseSmileID` prefix.
  private static let smileIDMarker = "UseSmileID"

  private var level: UseSmileIDCrashReporting.Level = .info

  // Guards `hub` for concurrent access from background callers (camera queue, frame
  // storage actor, etc.). Sentry-Cocoa's hub mutation APIs are internally thread-safe, but the
  // slot held here is plain mutable state — protect it with a serial lock.
  private nonisolated(unsafe) var hub: SentryHub?
  private let hubLock = NSLock()

  /// `true` when the active flow talks to the sandbox environment. Sandbox
  /// traffic is test data and must not reach the production Sentry project.
  private nonisolated(unsafe) var environmentIsSandbox = false

  private func currentHub() -> SentryHub? {
    hubLock.lock()
    defer { hubLock.unlock() }
    return hub
  }

  var isEnabled: Bool {
    currentHub() != nil
  }

  func enable(useSandbox: Bool) {
    enable(dsn: ArkanaKeys.Global().sENTRY_DSN, useSandbox: useSandbox)
  }

  /// Split out so a deterministic DSN can drive the hub creation directly (see
  /// `UseSmileIDSentryCrashReportingHandlerTests`) — the public path always reads Arkana's.
  func enable(dsn: String, useSandbox: Bool = false) {
    guard !dsn.isEmpty else {
      // Degrade gracefully when the DSN is absent (e.g. local snapshot
      // builds without Arkana run). Crash reporting is silently disabled
      // rather than failing to build the hub.
      return
    }

    UseSmileIDCrashReporting.resetThrottleState()
    hubLock.lock()
    environmentIsSandbox = useSandbox
    hubLock.unlock()

    let options = Sentry.Options()
    options.dsn = dsn
    options.releaseName = Self.sdkVersion
    options.environment = useSandbox ? "sandbox" : "production"
    // Reporting is handled-errors-only: the SDK forwards caught errors via
    // `captureException`. Native crash capture is intentionally NOT enabled —
    // `enableCrashHandler` only installs KSCrash inside `SentrySDK.start`,
    // which an embedded SDK must never call (it would seize the process-wide
    // crash handler and capture the partner app's crashes). Left explicitly
    // `false` so this stays clear.
    options.enableCrashHandler = false
    // Egress policy in `beforeSend`, in order:
    //   1. drop everything from debug (SDK-dev/sample/test) builds and from
    //      sandbox traffic so only production events reach the prod DSN
    //   2. drop events without a `UseSmileID*` frame (partner-only errors)
    //   3. throttle repeat fingerprints (`UseSmileIDCrashReporting.shouldReport`)
    //   4. redact known PII tokens (emails, JWTs, bearer tokens, phone
    //      numbers) from message + exception values + breadcrumbs + tags/extra
    options.beforeSend = { [weak self] event in
      #if DEBUG
        return nil
      #else
        guard let self else { return nil }
        self.hubLock.lock()
        let isSandbox = self.environmentIsSandbox
        self.hubLock.unlock()
        guard !isSandbox else { return nil }
        let isSmileIDOrigin = self.isCausedBySmileID(event)
        let fingerprint = self.fingerprint(for: event)
        guard UseSmileIDCrashReporting.shouldReport(
          isSmileIDOrigin: isSmileIDOrigin,
          fingerprint: fingerprint,
          now: Date()
        ) else { return nil }
        self.redactPII(event)
        return event
      #endif
    }

    // `UIDevice.current` is `@MainActor`-isolated. `enable()` is called
    // from the flow builder which runs on the main actor, so the values
    // are safe to read via `MainActor.assumeIsolated`. Reading them once
    // here also keeps the scope-mutation block off the main actor.
    let deviceModel = MainActor.assumeIsolated { UIDevice.current.model }
    let osVersion = MainActor.assumeIsolated { UIDevice.current.systemVersion }

    let scope = Sentry.Scope()
    scope.setTag(value: deviceModel, key: "model")
    scope.setTag(value: osVersion, key: "os_version")
    scope.setTag(value: Self.sdkVersion, key: "sdk_version")

    let sentryClient = SentryClient(options: options)
    let newHub = SentryHub(client: sentryClient, andScope: scope)
    hubLock.lock()
    hub = newHub
    hubLock.unlock()
  }

  func disable() {
    hubLock.lock()
    let previous = hub
    hub = nil
    environmentIsSandbox = false
    hubLock.unlock()
    UseSmileIDCrashReporting.resetThrottleState()
    previous?.close()
  }

  func captureException(_ error: Error) {
    guard let hub = currentHub() else { return }
    // Sentry-Cocoa's `capture(error:)` is bridged from
    // `-(SentryId *)captureError:(NSError *)error`, so it wants an
    // `NSError`. Swift bridges any `Error` to `NSError` automatically
    // via `_ObjectiveCBridgeable`; the cast always succeeds.
    _ = hub.capture(error: error as NSError)
  }

  func captureMessage(_ message: String) {
    guard let hub = currentHub() else { return }
    _ = hub.capture(message: message)
  }

  func captureBreadcrumb(category: String, message: String, level: UseSmileIDCrashReporting.Level) {
    guard let hub = currentHub() else { return }
    let crumb = Breadcrumb()
    crumb.category = category
    crumb.message = message
    crumb.level = level.sentryLevel
    hub.configureScope { scope in
      scope.addBreadcrumb(crumb)
    }
  }

  func setUserId(_ id: String) {
    guard let hub = currentHub() else { return }
    let user = User()
    user.userId = id
    hub.configureScope { scope in
      scope.setUser(user)
    }
  }

  func setContextTag(_ key: String, value: String) {
    guard let hub = currentHub() else { return }
    hub.configureScope { scope in
      scope.setTag(value: value, key: key)
    }
  }

  /// Returns `true` when any stack frame in `event` originates from a
  /// `UseSmileID*` binary image / function.
  private func isCausedBySmileID(_ event: Event) -> Bool {
    // Exceptions carry frames for events captured via `hub.capture(error:)`.
    if let exceptions = event.exceptions {
      for exception in exceptions where frameMatches(exception.stacktrace?.frames) {
        return true
      }
    }
    // Threads carry frames for native crashes captured by KSCrash.
    if let threads = event.threads {
      for thread in threads where frameMatches(thread.stacktrace?.frames) {
        return true
      }
    }
    return false
  }

  private func frameMatches(_ frames: [Frame]?) -> Bool {
    guard let frames else { return false }
    for frame in frames {
      if frame.package?.contains(Self.smileIDMarker) == true {
        return true
      }
      if frame.function?.contains(Self.smileIDMarker) == true {
        return true
      }
    }
    return false
  }

  private func fingerprint(for event: Event) -> String {
    if let exception = event.exceptions?.first {
      // type and value are both nullable; fall back to stable placeholders so
      // distinct nil-metadata events don't collapse into one throttle bucket.
      return "\(exception.type ?? "unknown")|\(exception.value ?? "")"
    }
    return event.message?.formatted ?? ""
  }

  private func redactPII(_ event: Event) {
    if let message = event.message?.formatted {
      event.message = SentryMessage(formatted: UseSmileIDCrashReporting.redactString(message))
    }
    if let exceptions = event.exceptions {
      for exception in exceptions {
        if let value = exception.value as String? {
          exception.value = UseSmileIDCrashReporting.redactString(value)
        }
      }
    }
    if let breadcrumbs = event.breadcrumbs {
      for crumb in breadcrumbs {
        if let message = crumb.message {
          crumb.message = UseSmileIDCrashReporting.redactString(message)
        }
      }
    }
    if let tags = event.tags {
      var redacted = tags
      for (key, _) in tags where UseSmileIDCrashReporting.isPIIKey(key) {
        redacted[key] = UseSmileIDCrashReporting.redactedSentinelValue
      }
      event.tags = redacted
    }
    if let extra = event.extra {
      var redacted = extra
      for (key, _) in extra where UseSmileIDCrashReporting.isPIIKey(key) {
        redacted[key] = UseSmileIDCrashReporting.redactedSentinelValue
      }
      event.extra = redacted
    }
  }
}

extension UseSmileIDCrashReporting.Level {
  fileprivate var sentryLevel: SentryLevel {
    switch self {
    case .fatal: .fatal
    case .error: .error
    case .warning: .warning
    case .info: .info
    case .debug: .debug
    // `Level` is public in a library-evolution module, so a different-module switch must
    // handle cases added in a future SDK version — treat anything new as informational.
    @unknown default: .info
    }
  }
}
