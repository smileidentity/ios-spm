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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522215646.26313929028/UseSmileID.xcframework.zip",
            checksum: "c628a7e981d7cb9aac8882043da12a10153a57a216beef09e5c778008891806d"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522215646.26313929028/UseSmileIDML.xcframework.zip",
            checksum: "c63b3c73c1990ed8dacbc181f46a8cd9c46766bb808cf622c133563dc9643392"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522215646.26313929028/UseSmileIDVisionFace.xcframework.zip",
            checksum: "3a388b548d714b53f135879177885b6891516738b4ab0033e2405b9cb567aa06"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522215646.26313929028/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "f804090583b0d721f4a6d0b84143edb023832987d4b21196b677817270753f56"
        ),
    ]
)
