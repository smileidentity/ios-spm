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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260803210029.30852451763/UseSmileID.xcframework.zip",
            checksum: "c0f318159eca7ee1149007dfa0c7ca373fd3565612bd5a25c420764a32cb4b59"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260803210029.30852451763/UseSmileIDBridge.xcframework.zip",
            checksum: "72dc426dcf61ddcc7f33e226a59eee62dd2863029cad1aaea7924c41df0dd3b3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260803210029.30852451763/UseSmileIDVisionFace.xcframework.zip",
            checksum: "862ced8b9e50abaae742b29382023df4d859c922679c53f450eb0fdd4370976e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260803210029.30852451763/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "13a5a44b8851aef97c47605fa241837b4c2784fa9f4562e015b7e2e83a89ecd4"
        ),
    ]
)
