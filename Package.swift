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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709111732.29014333446/UseSmileID.xcframework.zip",
            checksum: "961c70da2ae2e415737a9ba28cc22de9b2922939f9474b013bc70a60a3cd361d"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709111732.29014333446/UseSmileIDBridge.xcframework.zip",
            checksum: "72bc267c64d8904537dba6f41dea001391cc51cb9ee5859fb24405baf67a9916"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709111732.29014333446/UseSmileIDVisionFace.xcframework.zip",
            checksum: "6338dcdb0becd6ca5d1b8b0f85aedf3e5e1d07d73c3ddcd0397b6db34ebe67b0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709111732.29014333446/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d4facc955326326543c4ec762f0a4dedc1ea342ec64f6fc4f2821a25c5dca080"
        ),
    ]
)
