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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731005602.30594769597/UseSmileID.xcframework.zip",
            checksum: "b89d157df6a56828d8f4acd54b0b1ebd42dfdb68a54c9023e07fe985e7e200e0"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731005602.30594769597/UseSmileIDBridge.xcframework.zip",
            checksum: "d35b1defd380e2ac18bc5d69263b6b9f18b2a778e6a15c00382e4fecdb773227"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731005602.30594769597/UseSmileIDVisionFace.xcframework.zip",
            checksum: "5f91a13ebf4e02d69adc0062da56a6ae5899b7e2e61c3ee8a30408947fcda049"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731005602.30594769597/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "72945b433f71a5c00b4326c3b60e88d43c5cca83d60f94082ea2820baf452b6f"
        ),
    ]
)
