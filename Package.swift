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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507155925.25507128043/UseSmileID.xcframework.zip",
            checksum: "5f27b1e30b83ff4b6371a6a927311110f626d5d495115558bea7506dbc0a6348"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507155925.25507128043/UseSmileIDML.xcframework.zip",
            checksum: "668b7c7ba629d6b9bae984607212d57c69de7bab8ba8e30a98ec5144958aa38d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507155925.25507128043/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e82bc9b6e96d87d015ffc0120bee9cd07c1c30d3f3c1e18676fae0294f1b688c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507155925.25507128043/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "1185b06033dcb5b95a548be2b2a8f0646a4e92fb09db9bfe40314328502fc7a7"
        ),
    ]
)
