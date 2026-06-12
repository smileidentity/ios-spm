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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612172928.27431990988/UseSmileID.xcframework.zip",
            checksum: "1a77df2b2c487129449c018adb5e554902eb8fdc2728e7cbc6f26d42fc91b2bf"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612172928.27431990988/UseSmileIDBridge.xcframework.zip",
            checksum: "32eede8d36782aa5ead74757f7e087c008d74b51116579d5517c40267ae6ded8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612172928.27431990988/UseSmileIDVisionFace.xcframework.zip",
            checksum: "a30db9b44f25c2a89ba4d6ce944d600cafafb190aa46084350384f34735a46a9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612172928.27431990988/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ea7642cfabd6822bc04d8fc7e36fcf62333fc8271f8b5f41ec814f142411eb9a"
        ),
    ]
)
