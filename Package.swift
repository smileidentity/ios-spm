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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625112618.28166754144/UseSmileID.xcframework.zip",
            checksum: "9ae0bb69e9734f599a89065d0b858e7fb83573ee2d1e8fc4ded47fbe3e3d15e4"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625112618.28166754144/UseSmileIDBridge.xcframework.zip",
            checksum: "c407dc681da32dbdf611050385a0bfb2326b702e17052e6a662dbda62efa51fc"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625112618.28166754144/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e5a493e903c7b008bd3182124acb88d447be8b25fa9b1313ebb8a049089f4134"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625112618.28166754144/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "6efa7e2654190c95ec75a85ff54da6ce361aa9c904adb0d0c1f4be9b7ce20eee"
        ),
    ]
)
