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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701142536.28524767340/UseSmileID.xcframework.zip",
            checksum: "3552b007e22acfb4d2bb5215bffdc356ba47665296135114c9ddb91e840f3499"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701142536.28524767340/UseSmileIDBridge.xcframework.zip",
            checksum: "30e578aec58a84bd673f3c94ba43de960cc380bf870b1f453cece7c4ad9aaf3e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701142536.28524767340/UseSmileIDVisionFace.xcframework.zip",
            checksum: "557d20c54007709c66b6c391244603aa877ebed727354d9c0a5e9ff1dfe57f2f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701142536.28524767340/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2f95e971f510efad8fc0f8290dc1757bd064897da2e12ce380aef7a7ab66cfb1"
        ),
    ]
)
