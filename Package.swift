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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709115158.29016153316/UseSmileID.xcframework.zip",
            checksum: "40ea2cc2e799e27569ed71a591c8cf8d287ff83dd3022c7555739d2812614426"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709115158.29016153316/UseSmileIDBridge.xcframework.zip",
            checksum: "3b65343c987a9dabbf18d79875d93d721ea48912ce6390214d35e248dc14ac6c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709115158.29016153316/UseSmileIDVisionFace.xcframework.zip",
            checksum: "6d70df35a2d8c631e95b3dabe6b2adee2da605229182f33cd52a673bf9aeb6c4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709115158.29016153316/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "c314b85795b81f7ca050edf59dc00be3db104e7734d4055416417e281a4c8b9d"
        ),
    ]
)
