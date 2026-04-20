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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260420121732.24666010102/UseSmileID.xcframework.zip",
            checksum: "b2922741601656d1789e4e4178d2fc23c01087ef9c7af527d046aec493af6f38"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260420121732.24666010102/UseSmileIDML.xcframework.zip",
            checksum: "0060c01cf378d4519656e371b85f8cf06efe7a9f1d77260970b3e43c67d5c9cd"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260420121732.24666010102/UseSmileIDVisionFace.xcframework.zip",
            checksum: "3f5341d243be20a13e10dd1082abc205fe58d2fa3a644d5c7b87e0fb255f2a40"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260420121732.24666010102/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "eb122af5e30613546c53f7fa78b7f15433ec47209a77edc90d1c6614bc1e493d"
        ),
    ]
)
