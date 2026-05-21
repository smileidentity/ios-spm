// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDML",
            targets: ["UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521132814.26228976989/UseSmileID.xcframework.zip",
            checksum: "02dc5f952b738d853768871cf9d8a84c40101d94de2da7e7cbbd5b7141cf3939"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521132814.26228976989/UseSmileIDML.xcframework.zip",
            checksum: "49008852ad6740700c56437fa0ae93b42a98862a2adb7219aaaffd5d203b3d9d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521132814.26228976989/UseSmileIDVisionFace.xcframework.zip",
            checksum: "10e1a8cd178cb8f8e93fd58a67578214bbe8195e977e3819278c2037fc6d0be4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521132814.26228976989/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "302b4069e82f9905c9cb735b4e5708edae3d2897b0dbfeecb93274c0e2048504"
        ),
    ]
)
