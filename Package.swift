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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417152020.24572697459/UseSmileID.xcframework.zip",
            checksum: "a3f545431c45d964e5cb1f20c765a37acdd9cc36bb37de139f05e13395063735"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417152020.24572697459/UseSmileIDML.xcframework.zip",
            checksum: "7161fe696bf72e877ceb5a542bc2f7c58d60856eb6eb89546d1e5cace9ae8497"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417152020.24572697459/UseSmileIDVisionFace.xcframework.zip",
            checksum: "bcf86af177d35027f3a6e47cbc3c515b944a0b96533567b94969a1bec96316f5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417152020.24572697459/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ae6592df15b5bd8a09ceca6b53fef2a7008a5d3b9a50f55e128d933847df98bc"
        ),
    ]
)
