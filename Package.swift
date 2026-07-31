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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731102851.30623433360/UseSmileID.xcframework.zip",
            checksum: "e17d0bd8738dc63e44b4806841c1901e3caefa36bd2874c2c25851a0a6fd6d6b"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731102851.30623433360/UseSmileIDBridge.xcframework.zip",
            checksum: "dc0e6f91ba2a7395713309555249f97a865e760797c233161a6c32068ff6eef3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731102851.30623433360/UseSmileIDVisionFace.xcframework.zip",
            checksum: "8145743de32b15fdd8989fd8c7b0b1f376ce9d89e79c62e5ed8e7a1b8646f28c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731102851.30623433360/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "08d0402fc343e845325c77cb5c01254d4dd96bbafb296bbac5e5f008a421b1de"
        ),
    ]
)
