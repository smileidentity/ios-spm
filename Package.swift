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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260403185404.23958160694/UseSmileID.xcframework.zip",
            checksum: "f1103e9313050e6fbb52e637044c3d3a946c66632c58c5214286c922bca37857"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260403185404.23958160694/UseSmileIDML.xcframework.zip",
            checksum: "5375c0fe87005a9a01c4b5363b91179112cb0e81544844539ad3b85ea8f89ac0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260403185404.23958160694/UseSmileIDVisionFace.xcframework.zip",
            checksum: "8b8e95a61f31860b08bcb6eb86893ef9158982860f9892b37fa90b858c9e9bd9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260403185404.23958160694/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "a8149e8cd490a3bd3349c195cb8e53605acefe30edc7de030066cbebac5f2a60"
        ),
    ]
)
