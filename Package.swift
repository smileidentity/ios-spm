// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDBridge"]
        ),
        .library(
            name: "UseSmileIDBridge",
            targets: ["UseSmileIDBridge"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace", "UseSmileIDBridge"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument", "UseSmileIDBridge"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604110306.26947753406/UseSmileID.xcframework.zip",
            checksum: "2540d339cd93635789693a4d378058fe42a5aba4740c469ddcceb1b589be4f83"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604110306.26947753406/UseSmileIDBridge.xcframework.zip",
            checksum: "616fd1711657edf1dad98b7009d076d563b285164aabe2e1c2fac096aa3f942f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604110306.26947753406/UseSmileIDVisionFace.xcframework.zip",
            checksum: "10385c44bb918087b6ca404a145cf8c6b08e62bc0d778d190c9e93d816908620"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604110306.26947753406/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "556778b288b2864bb77b518718d3dd7c0ce860cfc9aa94c1495b3f8b2837f986"
        ),
    ]
)
