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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622111846.27948876248/UseSmileID.xcframework.zip",
            checksum: "9c97437cd64ed2195c74ae9933434cafdcb1ea149a2e20c0ff9bd8231fd2dd15"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622111846.27948876248/UseSmileIDBridge.xcframework.zip",
            checksum: "0cc117b741f0dea02f5185a91180e87d53b9d4498cff18132e55c6fa2b901bdf"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622111846.27948876248/UseSmileIDVisionFace.xcframework.zip",
            checksum: "1c53ab0d48c36b8cf973e86d1227c684872c0f8f5e9f0f947b9c83d8e0ece28d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622111846.27948876248/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ad68696e3f82d2127e7e686fd34daf5ca70e364dde784d91d7146f6b2150b2c4"
        ),
    ]
)
