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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260710154536.29104863748/UseSmileID.xcframework.zip",
            checksum: "bd52b77c6a6fae8b48870005e9ae60fcaf5264674afe287c3fde9c58069685ef"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260710154536.29104863748/UseSmileIDBridge.xcframework.zip",
            checksum: "a677aa6db58933934e74ebcb932a63d5c4322c060de1d06b72bccf25047062ac"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260710154536.29104863748/UseSmileIDVisionFace.xcframework.zip",
            checksum: "12ea4b62d9efbebbe2d7b045dc77deb8cfaeae6539d8607525ddd8b8fafc35bb"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260710154536.29104863748/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "6caf57241d7fc263c7045cef4d4bd7ede10012de2660d6e75b2ed3022b1cb28d"
        ),
    ]
)
