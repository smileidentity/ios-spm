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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629140437.28377874408/UseSmileID.xcframework.zip",
            checksum: "b432e9975b55c3130bc90e50b5724456c2d35f1ef11b7ac0ba49e4c4f218b35f"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629140437.28377874408/UseSmileIDBridge.xcframework.zip",
            checksum: "12b6ec73fa33658810b62ed78729a0c6689bccf2e15fb46e3a79a3a6762bc5a8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629140437.28377874408/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e37072c677e2f723c0b0568215848e13aa7c966f43b6f6ba0cd93c1ecb491eac"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629140437.28377874408/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "6a52b97d8c21e7982d0c073f0750abd3548f788356bb9b3152c11473c49944bc"
        ),
    ]
)
