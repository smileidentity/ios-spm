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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622120849.27951506772/UseSmileID.xcframework.zip",
            checksum: "c1967b43726adcabfd86b886648de473d84f9b38ccf63f8b56292fde4659dee2"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622120849.27951506772/UseSmileIDBridge.xcframework.zip",
            checksum: "d81c6048fbc7add024167a99d2ad2406fe0212a180a4dc294c40e4f1bfef0a3e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622120849.27951506772/UseSmileIDVisionFace.xcframework.zip",
            checksum: "f00d8382174f2b0fbfa097957a9062a750d0b872057e2976868a7e089f412b38"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622120849.27951506772/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d64931761e6b60fc6f982bb33d59154624f7baad739bde0be5d087b1b897ff3d"
        ),
    ]
)
