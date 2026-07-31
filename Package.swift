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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731115141.30628236243/UseSmileID.xcframework.zip",
            checksum: "a3b0ff067156e07983dd34af20c036c1a7bec40656885448a0b0d71bbe2d5ad7"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731115141.30628236243/UseSmileIDBridge.xcframework.zip",
            checksum: "47276ddd4aff9aafcc19621a0e385cb944bb73e4266cbf5bbbd5b17f15cfde62"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731115141.30628236243/UseSmileIDVisionFace.xcframework.zip",
            checksum: "df1dab2063deab3c10b5095842bcb4920863e96c09a91a58a548a0d48778b9a5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731115141.30628236243/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "293b83bab934351cb4b5531c69ee21bb41575bed6e8ab0ac1f9e8c2152f05e92"
        ),
    ]
)
