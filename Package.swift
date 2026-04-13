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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413115754.24342093409/UseSmileID.xcframework.zip",
            checksum: "8b3f3279a981cf11c684445c8cfb012d4435a543aa901ce2736506c12d1be378"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413115754.24342093409/UseSmileIDML.xcframework.zip",
            checksum: "b285ab3d00e84bcd37ebe48f7f8f4deb7f3ec6b511b75a6400bb09e8dff63870"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413115754.24342093409/UseSmileIDVisionFace.xcframework.zip",
            checksum: "25134f7ab99ec849708b4ea90750e867a63f16d46b5cb223d23765e30e2b9360"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413115754.24342093409/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "64fb080fa5dd72705aaa06ef4653911d57d73b6c277deea881eb90fe9753774b"
        ),
    ]
)
