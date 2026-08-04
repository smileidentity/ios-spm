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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804074148.30888565340/UseSmileID.xcframework.zip",
            checksum: "2fc8df48b6b58624f02e45134cc41a948d63965f66d6f6cb2d1aef2039bef490"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804074148.30888565340/UseSmileIDBridge.xcframework.zip",
            checksum: "a2c0e732c7548d156264bd6d15fcce86a630145537d23c3a758d5304b8eaa0a1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804074148.30888565340/UseSmileIDVisionFace.xcframework.zip",
            checksum: "c57874c1dca9382c47a4ef4c0462122b9eaee3c602390ac101fc031182ca7c4c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804074148.30888565340/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "c45ba58d491bc01f17aa78f4a65320025f7af72abf779d91eed2a0e42bd20e1f"
        ),
    ]
)
