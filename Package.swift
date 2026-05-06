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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260506104505.25430636407/UseSmileID.xcframework.zip",
            checksum: "b6dd6eb79ba7c9d89f5613914b0e6c97fe210b20b4a534590f91ec3e3df7bffd"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260506104505.25430636407/UseSmileIDML.xcframework.zip",
            checksum: "d54d92a16b935aee52ae3e311a56260df41cb57f7596f0fea1c8afdc4f3bfa19"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260506104505.25430636407/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e9caab8261b5dde485d4ac6e07e70f00ab23db992678e1d3e8260130f633a635"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260506104505.25430636407/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "14bda1cd2ab4f80dbbe940659fe010dc7b9251269d52d82119dceefcc0011987"
        ),
    ]
)
