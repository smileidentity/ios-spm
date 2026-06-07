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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260607095832.27089278334/UseSmileID.xcframework.zip",
            checksum: "458cecb624da3270e0f1bec0bc4c9278dca2d73abde4c6534f5badfe39ed152a"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260607095832.27089278334/UseSmileIDBridge.xcframework.zip",
            checksum: "a0145f688d4ea7668b67c4d71beb36cc04f6f8a3a0dc90f2cdfa18c0483f6ebf"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260607095832.27089278334/UseSmileIDVisionFace.xcframework.zip",
            checksum: "c93f70967fb938552e8da2376403111e15f43514aea828630229c2d641750064"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260607095832.27089278334/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "1af2a4f908983801d66a480e81d4dd382d5ad1a1e4725f9f9181b2e47c166e2f"
        ),
    ]
)
