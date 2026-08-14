import UIKit
@_spi(CrashReportingSeam) import UseSmileIDBridge
internal import Sentry

/// The Sentry-backed handler, shipped in the SPM source layer so the compiled binary never links
/// Sentry. Discovered via `NSClassFromString` — keep the `@objc` name in sync with
/// `UseSmileIDCrashReporting.handlerClassName`.
@objc(UseSmileIDSentryCrashReportingHandler)
final class UseSmileIDSentryCrashReportingHandler: NSObject, UseSmileIDCrashReportingHandler {
  /// Hardcoded — depending on `UseSmileIDMetadataFactory` would be a cycle; bump in lockstep with its `sdkVersion`.
  private static let sdkVersion = "12.0.2" // x-release-please-version

  /// Substring matched against stack-frame `package`/`function` to tag SmileID-origin events.
  private static let smileIDMarker = "UseSmileID"

  private var level: UseSmileIDCrashReporting.Level = .info

  // Plain mutable state read from background callers — guarded by `hubLock`.
  private nonisolated(unsafe) var hub: SentryHub?
  private let hubLock = NSLock()

  /// Sandbox traffic is test data and must not reach the production Sentry project. Guarded by `hubLock`.
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

  /// Seam for tests to inject a deterministic DSN; the public path reads Arkana's.
  func enable(dsn: String, useSandbox: Bool = false) {
    guard !dsn.isEmpty else {
      // No DSN (e.g. a local build without Arkana) silently disables reporting.
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
    // Handled-errors-only: never enable the crash handler — installing KSCrash would seize
    // the partner app's process-wide crash reporting.
    options.enableCrashHandler = false
    // Egress gate: drop debug/sandbox events, require a SmileID frame, throttle repeats, redact PII.
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

    // `UIDevice.current` is main-actor-isolated and `enable()` runs on the main actor — read once here.
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
    // Sentry's ObjC `captureError:` wants an `NSError`; Swift's bridging cast always succeeds.
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

  /// Whether any stack frame in `event` originates from a `UseSmileID*` image or function.
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
      // Stable placeholders so distinct nil-metadata events don't share one throttle bucket.
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
    // Library-evolution enum — map cases added in a future SDK version to informational.
    @unknown default: .info
    }
  }
}
