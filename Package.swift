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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712083111.29185971312/UseSmileID.xcframework.zip",
            checksum: "bf369f588dbfb7be65d195973ee9f6f9709c1e49090a2971f908b9d4a2cdeb97"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712083111.29185971312/UseSmileIDBridge.xcframework.zip",
            checksum: "cf7aa0804720a73c926fb41b02b29e81e019a5eda579c82f3dcea8ad48801566"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712083111.29185971312/UseSmileIDVisionFace.xcframework.zip",
            checksum: "122b20ddbc55064a47f368ac53054700b9439d89f8ff98b25b772dfe2f73ebf1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712083111.29185971312/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "103445be96f4750e500b87b89ae651972d5ad0f0aeb2f97b2d8949f6cf0403e4"
        ),
    ]
)
