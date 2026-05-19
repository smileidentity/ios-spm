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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519061821.26079963383/UseSmileID.xcframework.zip",
            checksum: "709be3ae8d0dc227653be7834e1656b52b94e23df5aebab73c3b6fe81491c04a"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519061821.26079963383/UseSmileIDML.xcframework.zip",
            checksum: "0e2137511e04bf7658f85eeff1cb645b2fe0fffbbd6c16e07bbaf6c4e90548d9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519061821.26079963383/UseSmileIDVisionFace.xcframework.zip",
            checksum: "92ac56ed753bbe7ade5ce09c9c69d5c9dabb93237b7de2cf2893f031d50d02e8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519061821.26079963383/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "fa8a970253ade167a064e364cce678f115afc744faf98d114424d2e657505f0f"
        ),
    ]
)
