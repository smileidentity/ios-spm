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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260506102207.25429651489/UseSmileID.xcframework.zip",
            checksum: "b8744a52576b3eea53d4e8a7f22b024e3bf14588b1dae9fdf175fa21106d69c7"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260506102207.25429651489/UseSmileIDML.xcframework.zip",
            checksum: "782b1623000cdec55958b82fad1cdf202d2a5d2549a804dc68673bf9c235a561"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260506102207.25429651489/UseSmileIDVisionFace.xcframework.zip",
            checksum: "64faa6552f7fd99c88f1e8abc48f500b5e708a8bf886a34cc48d59a397f6a3ce"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260506102207.25429651489/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "7b5cbb8262bf1b7bc5f7e59901c65776ea807ec5f779f3c7f1a1effa7003291e"
        ),
    ]
)
