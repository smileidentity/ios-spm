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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522111424.26284535894/UseSmileID.xcframework.zip",
            checksum: "d43661e2ae3d04ff0c23dff020a9966f09c20e3b097b240f7040774a7ae98fce"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522111424.26284535894/UseSmileIDML.xcframework.zip",
            checksum: "d9558b7db001d483ab35af46a59b0648e6481f067e675bfff512630d1cdfea95"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522111424.26284535894/UseSmileIDVisionFace.xcframework.zip",
            checksum: "03212a594a9199acc96c3c260a65bda175846d08fdfa965cfa2d20f74f5d1a3f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522111424.26284535894/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "bc8ac1c17cc195a70b7922ca72b7f64b113dde5387912d0619d57d8ef452e16a"
        ),
    ]
)
