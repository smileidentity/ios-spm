#if DEBUG
  import SwiftUI

  /// What the test server has seen, for a UI test that drives the app from another process (kamera
  /// design 64, D7). It lists the submissions' paths, `|`-separated, as the accessibility value of the
  /// element identified `smileid-test-submissions`, and every request's path as that of
  /// `smileid-test-requests`. It is all but invisible: put it anywhere in the screen that hosts the
  /// flow.
  public struct UseSmileIDTestReport: View {
    private let test: UseSmileIDTest
    @State private var submissions: [String] = []
    @State private var requests: [String] = []

    public init(test: UseSmileIDTest) {
      self.test = test
    }

    public var body: some View {
      VStack(spacing: 0) {
        Text(submissions.joined(separator: "|"))
          .accessibilityIdentifier("smileid-test-submissions")
          .accessibilityValue(submissions.joined(separator: "|"))
        Text(requests.joined(separator: "|"))
          .accessibilityIdentifier("smileid-test-requests")
          .accessibilityValue(requests.joined(separator: "|"))
      }
      .font(.system(size: 1))
      .opacity(0.01)
      .allowsHitTesting(false)
      .onAppear(perform: refresh)
      .onReceive(NotificationCenter.default.publisher(for: UseSmileIDTestServer.didRecordRequest)) { _ in refresh() }
    }

    private func refresh() {
      submissions = test.server.submissions.map(\.path)
      requests = test.server.requests.map(\.path)
    }
  }
#endif
