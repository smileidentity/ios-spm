#if DEBUG
  import Foundation

  /// The person in front of the camera, scripted (kamera design 64, D3): what the scripted analyzers
  /// report frame by frame, from the shared `e2e-scenarios` set every Smile ID SDK runs. The
  /// analyzers answer from the script, not the pixels, so any camera frames will do.
  public struct UseSmileIDTestScenario: Sendable {
    let script: ScriptedScenario

    /// The scenario's name, as its JSON gives it.
    public var name: String {
      script.name
    }

    /// A selfie: hold still, then smile, then the capture completes.
    public static var selfieHappyPath: Self {
      bundled("selfie-happy-path")
    }

    /// An Enhanced SmartSelfie: the head turns, each held, then the capture completes.
    public static var enhancedSelfieHeadTurns: Self {
      bundled("ess-head-turn-happy-path")
    }

    /// One side of a document, found and held steady.
    public static var documentFront: Self {
      bundled("document-happy-path")
    }

    /// Both sides of a document.
    public static var documentFrontAndBack: Self {
      bundled("document-back-side")
    }

    /// A passport, then the visa page a residency job reads.
    public static var documentVisa: Self {
      bundled("document-visa")
    }

    /// A selfie that never satisfies the capture, so the flow times out.
    public static var selfieTimeout: Self {
      bundled("selfie-timeout")
    }

    /// A selfie for a flow with `skipApiSubmission`, which hands the job back instead of submitting it.
    public static var skipSubmission: Self {
      bundled("selfie-skip-submission")
    }

    /// A scenario of your own, in the shared schema (`Scenarios/schema.json`). Throws when the JSON
    /// doesn't decode or names a capture type other than `selfie` or `document`.
    public static func fromJSON(_ text: String) throws -> Self {
      try Self(script: JSONDecoder().decode(ScriptedScenario.self, from: Data(text.utf8)))
    }

    init(script: ScriptedScenario) throws {
      guard script.captureType == ScriptedScenario.selfie || script.captureType == ScriptedScenario.document else {
        throw UseSmileIDTestScenarioError.unknownCaptureType(script.captureType)
      }
      self.script = script
    }

    /// The bundled scenarios by the name `fromLaunchArguments()` reads.
    static let byName: [String: @Sendable () -> Self] = [
      "selfieHappyPath": { .selfieHappyPath },
      "enhancedSelfieHeadTurns": { .enhancedSelfieHeadTurns },
      "documentFront": { .documentFront },
      "documentFrontAndBack": { .documentFrontAndBack },
      "documentVisa": { .documentVisa },
      "selfieTimeout": { .selfieTimeout },
      "skipSubmission": { .skipSubmission }
    ]

    private static func bundled(_ name: String) -> Self {
      // The bundled files ship with this target and are checked against the shared set in CI.
      guard let url = Bundle.module.url(forResource: name, withExtension: "json", subdirectory: "Scenarios"),
            let data = try? Data(contentsOf: url),
            let script = try? JSONDecoder().decode(ScriptedScenario.self, from: data),
            let scenario = try? Self(script: script) else {
        preconditionFailure("UseSmileIDTesting is missing its bundled scenario \(name)")
      }
      return scenario
    }
  }

  /// Why a scenario of your own was refused.
  public enum UseSmileIDTestScenarioError: Error, Equatable {
    /// The scenario's `captureType` isn't `selfie` or `document`.
    case unknownCaptureType(String)
  }

  /// A parsed `e2e-scenarios` JSON script (see `Scenarios/schema.json`).
  struct ScriptedScenario: Decodable, Sendable {
    static let selfie = "selfie"
    static let document = "document"

    struct Step: Decodable, Sendable {
      let emit: String
      let holdFrames: Int?
    }

    let name: String
    let captureType: String
    let steps: [Step]
  }

  /// Frame-by-frame cursor over a `ScriptedScenario`. Each `next()` consumes one analyzer
  /// invocation; once the final step's `holdFrames` are spent it repeats, holding until the
  /// transitioner completes on its own.
  final class ScenarioCursor: @unchecked Sendable {
    private let lock = NSLock()
    private let steps: [ScriptedScenario.Step]
    private var stepIndex = 0
    private var framesLeftInStep: Int

    init(scenario: ScriptedScenario) {
      steps = scenario.steps
      framesLeftInStep = scenario.steps.first?.holdFrames ?? 1
    }

    func next() -> String {
      lock.withLock {
        guard !steps.isEmpty else { return "" }
        let step = steps[stepIndex]
        if stepIndex == steps.count - 1 {
          return step.emit
        }
        framesLeftInStep -= 1
        if framesLeftInStep <= 0 {
          stepIndex += 1
          framesLeftInStep = steps[stepIndex].holdFrames ?? 1
        }
        return step.emit
      }
    }
  }
#endif
