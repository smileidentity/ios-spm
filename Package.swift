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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260803122425.30813157204/UseSmileID.xcframework.zip",
            checksum: "a2e8e74b801bc90598a3301ce79fc2b4c1ffa591215bca54120998e06e350aaf"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260803122425.30813157204/UseSmileIDBridge.xcframework.zip",
            checksum: "b1136e64414b5c8372c9bc8f593e3c8acfdbb51617d61de85ddedb5d2954ac90"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260803122425.30813157204/UseSmileIDVisionFace.xcframework.zip",
            checksum: "5f7394f42fe622e6a193f9d258d46cdba338bd933554b0c2eb012d129e4459f0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260803122425.30813157204/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "5c9bbb9c09d6261cc1449a8094387b602551cc5d13f559f2f2c5039473d66ee6"
        ),
    ]
)
