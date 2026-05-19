// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDML",
            targets: ["UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519112221.26093941438/UseSmileID.xcframework.zip",
            checksum: "4109b2370a0fd3e274b4f85c061e0bca7dd16fb824e748f822934d68815dea84"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519112221.26093941438/UseSmileIDML.xcframework.zip",
            checksum: "8d8a7c816f3c819df08af9775c7a4ed2cebb3cae11777bb1455e04536e5793c3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519112221.26093941438/UseSmileIDVisionFace.xcframework.zip",
            checksum: "04ccdcbea553ca9757c7f5a22a5f6d4ab356a3e696f12ecfa220501a0c7519c5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519112221.26093941438/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "655646774524c8c81060cdf918c24bfbdb69688f75957308a3e99d6e4787e746"
        ),
    ]
)
