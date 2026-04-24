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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424112004.24886827274/UseSmileID.xcframework.zip",
            checksum: "e1b98be46a7f7ac582db3a6b0ff2ae3ad446683a01e29a83d17ed2ad8d17773d"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424112004.24886827274/UseSmileIDML.xcframework.zip",
            checksum: "2a8ea25e743f469373746c4d4a67a80073ba56f6fed4872b6815f9180978ae19"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424112004.24886827274/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d509b453e74fb6545698502d2bd3afbfc1d2641ebc02521b5e9801550d3adaf4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424112004.24886827274/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "eba98abb20fbb98a5838c13c576b7e957713e0ff551a56d8f853a1d9a6b7d20e"
        ),
    ]
)
