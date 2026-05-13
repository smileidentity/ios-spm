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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260513155107.25810259055/UseSmileID.xcframework.zip",
            checksum: "2eff49a0670963a81e3a8a91c3e60da8d900e18a66b0be13c09655e44e6c5805"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260513155107.25810259055/UseSmileIDML.xcframework.zip",
            checksum: "39051fa980c0878e3dab84f4449d4a16441b12a252b95366e267a4094f478483"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260513155107.25810259055/UseSmileIDVisionFace.xcframework.zip",
            checksum: "579ea1eec90c35a262c5e5076863706ba9fef1f38850fd0948b36f134fca19e3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260513155107.25810259055/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "9d0cb5c684a25a9e70f009ace4a6fa5a8c847f40d942c3984168eab8a0d382ad"
        ),
    ]
)
