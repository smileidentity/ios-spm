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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519182143.26116702901/UseSmileID.xcframework.zip",
            checksum: "16491964a7f8b499e209393d1920b852561be300bd92fa0141bd12d133f6fd90"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519182143.26116702901/UseSmileIDML.xcframework.zip",
            checksum: "e2edaae8fd549d45b906588bf9e57ebddb4d26ad65565dc753d1ad1c19dbba9d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519182143.26116702901/UseSmileIDVisionFace.xcframework.zip",
            checksum: "a3d8946b0ca43d4640019353aaa29f5cf57f5f3deb9fb53d17212409046e1386"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519182143.26116702901/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d1caeac8bdda4392f0a37fc4f4ec38d02a9ff7834878a0a63c320e483c1b93d1"
        ),
    ]
)
