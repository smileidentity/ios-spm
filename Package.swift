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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT/UseSmileID.xcframework.zip",
            checksum: "5f26d0a25c6d5ca60b667ce73e4f2ff09b95ca7f35d3939bb1347d5f37530dea"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT/UseSmileIDML.xcframework.zip",
            checksum: "f8f2d7f2c619b1c6cd602ac2316a9cd62741176f4c41089a198145ec7150afd8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT/UseSmileIDVisionFace.xcframework.zip",
            checksum: "7dedb2a7cfa6a5f113a360da3e8bcabbcb85ce64f7c7e5072c23c8d67892b70f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "622f209261dc274f8d0a8e8ef42a78e9f84f026a4608b27f87a2d603f9cb0e01"
        ),
    ]
)
