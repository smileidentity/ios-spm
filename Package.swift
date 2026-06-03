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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603134223.26888729559/UseSmileID.xcframework.zip",
            checksum: "49fc46f9a61929863e6e267ce4b1bc80625ad7e25ddf294974819b5a22e46278"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603134223.26888729559/UseSmileIDBridge.xcframework.zip",
            checksum: "a7b7da0344663157ca33e05cfa237ea96dc2f4c6b0b27dc9941e3bf95509dc8e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603134223.26888729559/UseSmileIDVisionFace.xcframework.zip",
            checksum: "f1eb5ad803d23789d8e1e2d5a5da695c480b125dfe082ee74a5afab0ea9a5553"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603134223.26888729559/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ec5789681803d54ab2aeaa83be7edc29061475197ff7f228a1dc48267c030103"
        ),
    ]
)
