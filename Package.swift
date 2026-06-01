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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601152649.26764542227/UseSmileID.xcframework.zip",
            checksum: "7f8c3bc0af6d98d0e82f331665948fbaab19048304903c66f780a14fe369055f"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601152649.26764542227/UseSmileIDBridge.xcframework.zip",
            checksum: "76b0f655c32b628adf8cd35c09418abb77ffa25eb0b45e6eae9f182e23e14ac2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601152649.26764542227/UseSmileIDVisionFace.xcframework.zip",
            checksum: "8341d213a0f656c0cf227f6e54cc5e8da897daf74783de54d7d3e0ea0a1b2606"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601152649.26764542227/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "234ffffa7076db61110c3edcc81a17ddd9baf1b5e927a200812e2aed5831f384"
        ),
    ]
)
