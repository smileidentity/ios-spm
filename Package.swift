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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622121448.27951859162/UseSmileID.xcframework.zip",
            checksum: "7cfc406465b16ab742d86e0c8ab2b9b8bd7120b96ea8299cf81eac5432702c81"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622121448.27951859162/UseSmileIDBridge.xcframework.zip",
            checksum: "e682b4221b34561bc1091ddad0244cd010b21df63d331b02a761582d8696e8d8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622121448.27951859162/UseSmileIDVisionFace.xcframework.zip",
            checksum: "6eb94cdc1866c8770606994594095b320fdd2d68527f87d509f4d9d428049612"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622121448.27951859162/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "c88014bd76db4b610506e15ed0c0e62007c69492ed9384ad52c8711dfe9b2029"
        ),
    ]
)
