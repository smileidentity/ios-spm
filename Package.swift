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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630080611.28429736385/UseSmileID.xcframework.zip",
            checksum: "899a3e072dca1a388037b3e2365b8b21e87ad5f8c8213e1302b1907a992d0d3f"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630080611.28429736385/UseSmileIDBridge.xcframework.zip",
            checksum: "69f9920ab3df2c045ccb162bebf7261ab719b5222a429d8865d5300ec7091348"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630080611.28429736385/UseSmileIDVisionFace.xcframework.zip",
            checksum: "4ff9cace0c1f025789c5ceba6649da06ab2181aa64921098f229b9c11baa2b68"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630080611.28429736385/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "cd708e2746f646a3704fea9a04b6d5975a992d1c386bb6bb3d35cf872558ace3"
        ),
    ]
)
