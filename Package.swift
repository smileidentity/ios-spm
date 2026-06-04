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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604134640.26955782272/UseSmileID.xcframework.zip",
            checksum: "25ce030b5d5c97b222bad2296485b05dc26952af9bbffe7f175792c31112d993"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604134640.26955782272/UseSmileIDBridge.xcframework.zip",
            checksum: "3a9dc9ddd16ca30e7be5a79e484fdbd400cb95ae0986229ce167c5873f56290b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604134640.26955782272/UseSmileIDVisionFace.xcframework.zip",
            checksum: "b5f1b32f73d0b949b034d2f9c4a0d9a9fe1e0c3d4910fee45ea1132cef6748ba"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604134640.26955782272/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "9f95b8366b62cbc3272eae8c3a122974e57fe8a6bdafd169136f4c4f325e2f4e"
        ),
    ]
)
