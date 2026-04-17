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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417102059.24560196253/UseSmileID.xcframework.zip",
            checksum: "c68b1e3cde3cf51e1a8f4c074d53c4c27eb7fef5c21433b7d3dbfd5a0855a420"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417102059.24560196253/UseSmileIDML.xcframework.zip",
            checksum: "3c09667ac2c9e063b610447294a438c783cb69b4ed1168929ee82318bb20a249"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417102059.24560196253/UseSmileIDVisionFace.xcframework.zip",
            checksum: "98766d820f8f564eefa71baf4d36b2b3ce68d21ca24bf229817bba9e326c42fa"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417102059.24560196253/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "1a683ef4157c7ed43194bf13993a950faf1cd12aeb3f2a2ceff8c6de2c4baa71"
        ),
    ]
)
