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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701075654.28502525370/UseSmileID.xcframework.zip",
            checksum: "552a6534dc813b95584d89f148aec82ab2ae28c1176a9ac4819e0dc7494b901c"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701075654.28502525370/UseSmileIDBridge.xcframework.zip",
            checksum: "5906fdb1c6a4c8c63542fbfcba8c834e5e7e2a2ec245e0e4c11a86011f3cb1d9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701075654.28502525370/UseSmileIDVisionFace.xcframework.zip",
            checksum: "df74dd3610caa56fc4aefa17eead03b5eec7f0aa7046fa3d9521a35a397cc6fd"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701075654.28502525370/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "c3ed7a554d22efa12820c3bd5d2affa4237464e6f9ebd34b06cb9bad04716739"
        ),
    ]
)
