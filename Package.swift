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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603121359.26883995809/UseSmileID.xcframework.zip",
            checksum: "26893330e26d78cfb8c0c057832884eb61d6483e38ed91c6cfad6c0b7c605595"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603121359.26883995809/UseSmileIDBridge.xcframework.zip",
            checksum: "8cd4e35f5bf50266ac1afae4aef8f14e44b613e5ca9987507057cf52da4fed33"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603121359.26883995809/UseSmileIDVisionFace.xcframework.zip",
            checksum: "8fad635346057cf8ccd25d7f4ff22adb6afb973815601040fe1ad18670224cd0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603121359.26883995809/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "a53a18558fecf6536bde3a08a6cff330301ae95869ec7ce48a564aa780fcf18b"
        ),
    ]
)
