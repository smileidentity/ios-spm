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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624182044.28120209074/UseSmileID.xcframework.zip",
            checksum: "ddc83f6107aace174bfb9122ed1d83dfeb3e4d441932ddc875cdebca9525b91b"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624182044.28120209074/UseSmileIDBridge.xcframework.zip",
            checksum: "20f276586b24819a9f68c0a85b704cf23235147a8dabdd487cddaed4f6d7873f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624182044.28120209074/UseSmileIDVisionFace.xcframework.zip",
            checksum: "cbc3956e571bdbacbcdbec9ea49631d3d8d164165cf7c81cacbdb14e8b78c6f6"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624182044.28120209074/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "443941d03415668829a7441b4f1bfb1a11db80c96dca606ced6a91c24eaf4ec3"
        ),
    ]
)
