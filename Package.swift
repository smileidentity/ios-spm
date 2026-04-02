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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402175102.23914181053/UseSmileID.xcframework.zip",
            checksum: "44847a3dcc182312684f1c478fd93ed14c839f6e6d8e5bbd0a096ef6d3f46c45"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402175102.23914181053/UseSmileIDML.xcframework.zip",
            checksum: "fbc7b1ebf28dd9ae69b11b1f7f316e33f5f0ba9869bd2b22663b10ed22fae097"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402175102.23914181053/UseSmileIDVisionFace.xcframework.zip",
            checksum: "9eea9df0775d1e257e393f629888d30f952703d533e21caa9539d731f98cf9c7"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402175102.23914181053/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "bc2ebdd22a43bdb818eecf0e5e55e84d30015447b36deda64a9f2e7d8bcc5791"
        ),
    ]
)
