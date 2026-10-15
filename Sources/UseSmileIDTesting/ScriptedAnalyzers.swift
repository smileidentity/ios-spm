#if DEBUG
  import Foundation
  import UseSmileIDBridge

  /// Deterministic analyzer that ignores real camera frames and replays a `ScriptedScenario`
  /// instead (kamera design 64, D3). Moved here from the sample's E2E harness. Registered through the public `ml { }` DSL, so the whole flow — screens,
  /// transitioners, frame persistence, submission — is the shipping code path; only the ML
  /// detection result is scripted.
  final class ScriptedFaceAnalyzer: Analyzer, @unchecked Sendable {
    typealias Input = AnalyzerInput
    typealias State = IdentityScanState
    typealias Output = AnalyzerOutput

    private let cursor: ScenarioCursor
    private var poseParity = false

    init(scenario: ScriptedScenario) {
      cursor = ScenarioCursor(scenario: scenario)
    }

    func analyze(data _: AnalyzerInput, state: IdentityScanState) async -> AnalyzerOutput {
      // ESS is interactive: the transitioner asks for one direction at a time, so answer the
      // requested direction off the state rather than the fixed token order.
      if case .headTurn(_, _, let direction, _, _, _, _, let feedbackRes) = state {
        let headPose = feedbackRes == FeedbackRes.lookAtCamera
          ? HeadPoseResult(yaw: 0, pitch: 0, roll: 0)
          : Self.headPose(for: direction)
        return faces(left: 0.25, top: 0.25, width: 0.5, height: 0.4, headPose: headPose)
      }
      switch cursor.next() {
      case "noFace":
        return FaceDetectorOutput(faces: [])
      case "faceTooFar":
        return faces(left: 0.45, top: 0.45, width: 0.1, height: 0.1)
      case "faceCentered", "satisfied":
        // Alternating a small, still-centered yaw provides the pose diversity the capture
        // pipeline's rotation gate requires between consecutive samples.
        poseParity.toggle()
        return faces(
          left: 0.25, top: 0.25, width: 0.5, height: 0.4,
          headPose: HeadPoseResult(yaw: poseParity ? 3 : -3, pitch: 0, roll: 0)
        )
      case "headTurnLeft":
        return faces(
          left: 0.25, top: 0.25, width: 0.5, height: 0.4,
          headPose: HeadPoseResult(yaw: HeadPoseResult.yawThresholdLeft - 15, pitch: 0, roll: 0)
        )
      case "headTurnRight":
        return faces(
          left: 0.25, top: 0.25, width: 0.5, height: 0.4,
          headPose: HeadPoseResult(yaw: HeadPoseResult.yawThresholdRight + 15, pitch: 0, roll: 0)
        )
      case "headTurnUp":
        return faces(
          left: 0.25, top: 0.25, width: 0.5, height: 0.4,
          headPose: HeadPoseResult(yaw: 0, pitch: -25, roll: 0)
        )
      default:
        return FaceDetectorOutput(faces: [])
      }
    }

    private static func headPose(for direction: HeadTurnDirection) -> HeadPoseResult {
      switch direction {
      case .left: HeadPoseResult(yaw: HeadPoseResult.yawThresholdLeft - 15, pitch: 0, roll: 0)
      case .right: HeadPoseResult(yaw: HeadPoseResult.yawThresholdRight + 15, pitch: 0, roll: 0)
      case .up: HeadPoseResult(yaw: 0, pitch: -25, roll: 0)
      }
    }

    private func faces(
      left: Float,
      top: Float,
      width: Float,
      height: Float,
      headPose: HeadPoseResult? = nil
    ) -> FaceDetectorOutput {
      FaceDetectorOutput(faces: [
        DetectedFace(
          boundingBox: BoundingBox(left: left, top: top, width: width, height: height, score: 0.9),
          headPose: headPose,
          smilingProbability: 1.0,
          brightness: FaceDetectorOutput.minBrightness + 40
        )
      ])
    }

    final class Factory: AnalyzerFactory {
      typealias Input = AnalyzerInput
      typealias State = IdentityScanState
      typealias Output = AnalyzerOutput
      typealias AnalyzerType = ScriptedFaceAnalyzer

      private let scenario: ScriptedScenario

      init(scenario: ScriptedScenario) {
        self.scenario = scenario
      }

      func newInstance() -> ScriptedFaceAnalyzer? {
        ScriptedFaceAnalyzer(scenario: scenario)
      }
    }
  }

  /// Document twin of `ScriptedFaceAnalyzer`: replays the scenario as `DocumentDetectorOutput`s.
  /// `documentFound` emits the same centered box every frame (frame-to-frame IoU = 1);
  /// `documentUnstable` alternates disjoint positions so IoU drops to 0 and the stability gate
  /// can never latch.
  final class ScriptedDocumentAnalyzer: Analyzer, @unchecked Sendable {
    typealias Input = AnalyzerInput
    typealias State = IdentityScanState
    typealias Output = AnalyzerOutput

    private let cursor: ScenarioCursor
    private let found: BoundingBox
    private var jitterFlip = false

    /// `aspectRatio` is the document's width to height: below 1 a portrait document, such as a
    /// passport, is framed upright; nil, or 1 and above, frames a card.
    init(scenario: ScriptedScenario, aspectRatio: Double?) {
      cursor = ScenarioCursor(scenario: scenario)
      found = (aspectRatio ?? Self.cardAspectRatio) < 1
        ? BoundingBox(left: 0.25, top: 0.15, width: 0.5, height: 0.7, score: 0.9)
        : BoundingBox(left: 0.15, top: 0.25, width: 0.7, height: 0.5, score: 0.9)
    }

    private static let cardAspectRatio = 1.586

    func analyze(data _: AnalyzerInput, state _: IdentityScanState) async -> AnalyzerOutput {
      switch cursor.next() {
      case "noDocument":
        return DocumentDetectorOutput(documents: [])
      case "documentFound", "satisfied":
        return DocumentDetectorOutput(documents: [found])
      case "documentUnstable":
        jitterFlip.toggle()
        let box = jitterFlip
          ? BoundingBox(left: 0.02, top: 0.05, width: 0.45, height: 0.35, score: 0.9)
          : BoundingBox(left: 0.52, top: 0.55, width: 0.45, height: 0.35, score: 0.9)
        return DocumentDetectorOutput(documents: [box])
      default:
        return DocumentDetectorOutput(documents: [])
      }
    }

    final class Factory: AnalyzerFactory {
      typealias Input = AnalyzerInput
      typealias State = IdentityScanState
      typealias Output = AnalyzerOutput
      typealias AnalyzerType = ScriptedDocumentAnalyzer

      private let scenario: ScriptedScenario
      private let aspectRatio: Double?

      init(scenario: ScriptedScenario, aspectRatio: Double?) {
        self.scenario = scenario
        self.aspectRatio = aspectRatio
      }

      func newInstance() -> ScriptedDocumentAnalyzer? {
        ScriptedDocumentAnalyzer(scenario: scenario, aspectRatio: aspectRatio)
      }
    }
  }
#endif
