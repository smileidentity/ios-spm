// swift-tools-version: 5.9
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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605152320.27023701990/UseSmileID.xcframework.zip",
            checksum: "c8bf43a09e943f2f74af084e563c3c2f576b4dd058a981b26fcd315873f5947c"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605152320.27023701990/UseSmileIDBridge.xcframework.zip",
            checksum: "54e359116d1cd613aad71906ee6f531b9791d617678256eb3a46e034ea9f9445"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605152320.27023701990/UseSmileIDVisionFace.xcframework.zip",
            checksum: "89be1b1a724306e1fce4d649d69cb7543fcc7740bdfc97749331c97ab09dd20c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605152320.27023701990/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "5930526d22c868c013bd3b7b2c7ba96db31c9c9881213f249f9af866ff9d40c3"
        ),
    ]
)
