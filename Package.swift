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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629163537.28387587606/UseSmileID.xcframework.zip",
            checksum: "efe3a7c7441ccca4171baceb8ecd3ddaaf8504df606b6ee92ca2f41e76090d2b"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629163537.28387587606/UseSmileIDBridge.xcframework.zip",
            checksum: "a299b1d0294aa589fe2e5d91d36e2bcd7eabbfe5bece4f803d92d9b2dadfedc9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629163537.28387587606/UseSmileIDVisionFace.xcframework.zip",
            checksum: "71656d298919b8e73bfbfb67f0ca09c8fe423352895723eddf48cf7b10bdc5bf"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629163537.28387587606/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "5d3ee90b2ad34094662a33f7bb0d2c07762047ff024d44dd12eafd697c8725c3"
        ),
    ]
)
