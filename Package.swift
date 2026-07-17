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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260717142413.29587583496/UseSmileID.xcframework.zip",
            checksum: "bfab72a54b084e7444128c232dd585002751c5cfc81900116ecabe552a1c3776"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260717142413.29587583496/UseSmileIDBridge.xcframework.zip",
            checksum: "8c2391b0446549a315dc46513b017ed7b2967c13a1a30dd53fa2df165ffa0ba1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260717142413.29587583496/UseSmileIDVisionFace.xcframework.zip",
            checksum: "72156a098ad8b62fefe8923d81cdc69cfa4f8bd1136d7a50224583b5baaa508a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260717142413.29587583496/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4a1a097204322615a0ae29b595632a2cc7d38e5aa6edbd8ee0e30e0ce63674d3"
        ),
    ]
)
