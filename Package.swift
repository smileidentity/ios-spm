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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417114536.24563403724/UseSmileID.xcframework.zip",
            checksum: "9ba5a65ecb72a0a00b7703a278b61e52ce81f417ef939da162be01e23a02df64"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417114536.24563403724/UseSmileIDML.xcframework.zip",
            checksum: "e317c55c27955265cd38ea431e9c3cc70304bd8697961ce2c27bec1e29eabd05"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417114536.24563403724/UseSmileIDVisionFace.xcframework.zip",
            checksum: "5d90755b721bab6268085e3e228c678322fa37799a0503c819461a895f6f16d1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417114536.24563403724/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "8e8202d2d18c4c7ff792891103822dab99d836ef1b76a87ab73fe319541efbc4"
        ),
    ]
)
