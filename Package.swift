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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260805114216.31002203321/UseSmileID.xcframework.zip",
            checksum: "a0f97c82aa52dee1937711f857eb3e571d934d715c751b84b9adb405c155be98"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260805114216.31002203321/UseSmileIDBridge.xcframework.zip",
            checksum: "bfdeae775810092a7d211d82a22b220c11a23cf8b57275d64db3b160164cad2e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260805114216.31002203321/UseSmileIDVisionFace.xcframework.zip",
            checksum: "286f14e76b71d7821dec5527e9e55de9248f1bbbc87713ff37f947d8b0ba79d7"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260805114216.31002203321/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "02d40b732873a90475212f27f7019945194a0e9cccb00378e08eb72773fe1fe7"
        ),
    ]
)
