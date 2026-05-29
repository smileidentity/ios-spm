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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260529065841.26623088613/UseSmileID.xcframework.zip",
            checksum: "de8a5cab0b843719c3e9bd4e21aec31b3b000c5360e2c61c011933828d5cdbea"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260526083538.26441596566/UseSmileIDML.xcframework.zip",
            checksum: "5afdad4929a5406c2a00fdc1ff974e142bec0864453f969cbc6091b18e8e65d2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260529065841.26623088613/UseSmileIDVisionFace.xcframework.zip",
            checksum: "351a2498a62151a5aac112633ceea27a93316e233d08681086a745c20b2dffd5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260529065841.26623088613/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2e1aa00b80bdda2d7a32b3cb10356c37a9fbefe035e9eb165b0546d0d9b5f4f6"
        ),
    ]
)
