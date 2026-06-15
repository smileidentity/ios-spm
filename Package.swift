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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615080708.27531875285/UseSmileID.xcframework.zip",
            checksum: "bc836f1c9e6667e7dff0626fa94efaa0f81ea2a6824d38722e0c6f5aa34d17e0"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615080708.27531875285/UseSmileIDBridge.xcframework.zip",
            checksum: "faa3c8a6b6be674feaa40472b47232369b83cfd74bb5f8d0d2ce336cd736d474"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615080708.27531875285/UseSmileIDVisionFace.xcframework.zip",
            checksum: "5192257645b70e8541fe21ee94b568e122d895c2437c52f5ba076296c3261cff"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615080708.27531875285/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "21375029ec5b8a1ed2753faf7ba3d211258c13e4cca111345313a17d5cb7c02e"
        ),
    ]
)
