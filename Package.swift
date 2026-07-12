// swift-tools-version: 6.0
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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712001903.29173518256/UseSmileID.xcframework.zip",
            checksum: "557557148ab5f158499ca4349caea0b0e68e576a78e5661449876c4cdf1d6ff1"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712001903.29173518256/UseSmileIDBridge.xcframework.zip",
            checksum: "ecb44178fd629f2347c37358630a52c1c28606af0b23b04cdf904a5f7ad7c43b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712001903.29173518256/UseSmileIDVisionFace.xcframework.zip",
            checksum: "52e2531483c5aea42bb3803a52d84bd289502d9d03d10c7dde5ea855d15968a5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712001903.29173518256/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "5a4a46179e97c49b381b5a8291bed15519a10efcba183c0f97c2e7102637a357"
        ),
    ]
)
