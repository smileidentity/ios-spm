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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260504183925.25336589289/UseSmileID.xcframework.zip",
            checksum: "291f198fa6bfb7ceb815d16dfce31a89bd8a56f6b9ce2dc4917e822c4e7ab18c"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260504183925.25336589289/UseSmileIDML.xcframework.zip",
            checksum: "ff90b917779691f988713d18e97f7de712f6192671cbedc9fefbb421285ac5a1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260504183925.25336589289/UseSmileIDVisionFace.xcframework.zip",
            checksum: "3e851255438f4b820e019f6423f23cb2cdf2705c2542074eea5c7d9e7a75dc2c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260504183925.25336589289/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "15b8a114f9a19dbedd9f564844d43c2a418c1a6fc94bfe13e233f332800d084d"
        ),
    ]
)
