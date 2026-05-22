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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522132601.26290494935/UseSmileID.xcframework.zip",
            checksum: "9ff2ea593796ae81bca04a447ca0daffe5d4bdc4ecffc800bb46cd282fe12ea9"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522132601.26290494935/UseSmileIDML.xcframework.zip",
            checksum: "6a821b5f88a5ec246d184dc8c9a811f2f9e9ee3c850efab5a0d61d31fe5b95a1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522132601.26290494935/UseSmileIDVisionFace.xcframework.zip",
            checksum: "266e0fcd848ff0cc6ccc92c098d6b5da91eed62e3c4747716c32b98fb560fbca"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522132601.26290494935/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "e1bb302347709a5444dd6d94a2518bb95570d5970d62eeec97b0c10bef994c44"
        ),
    ]
)
