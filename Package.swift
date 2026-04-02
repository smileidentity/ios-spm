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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402150623.23907236527/UseSmileID.xcframework.zip",
            checksum: "930175f133fad0ec4756065a2dacf3869a102c5c04f6661a0864813e95e6b331"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402150623.23907236527/UseSmileIDML.xcframework.zip",
            checksum: "1d87db6eba6ff83eb8b7204b49fd23c74e7f254813daaec678205fea5f074378"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402150623.23907236527/UseSmileIDVisionFace.xcframework.zip",
            checksum: "57bf677297723a9df3d1f6cc3afb8fbc8ef64ed6a8c5b1d5cf9ec02b8225567b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402150623.23907236527/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "3735344b8f9aa75bda0b251ad75f91b42c260df05d88b896520f6a870e416f28"
        ),
    ]
)
