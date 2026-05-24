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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260524214036.26373497960/UseSmileID.xcframework.zip",
            checksum: "778bc588031660dce16eaa2d46c71ea53f5a406969cb6ce466aa148e39ea4a45"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260524214036.26373497960/UseSmileIDML.xcframework.zip",
            checksum: "5fb67b987146e11ba5b9a09e8201b8aff9b697776199c16a28283b51b8f4c577"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260524214036.26373497960/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d1be0e070892c836d5694148f3b8ce886da88f0522d4d6767f8c0e4a7ba61f72"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260524214036.26373497960/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "0ec52f64abf8989dbca65fc7927513fb9cb6f4e78fdf6e99cb67da1d06aeaee7"
        ),
    ]
)
