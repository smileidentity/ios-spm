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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260716112654.29494260260/UseSmileID.xcframework.zip",
            checksum: "b1b1c45ca0b3ebd90e6061b78d7a439348e63087e926005ee66bed49efacdbf2"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260716112654.29494260260/UseSmileIDBridge.xcframework.zip",
            checksum: "6039b106364bc25be354280de52acbc620d1f2c643689a86b2bc478cdad65dd8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260716112654.29494260260/UseSmileIDVisionFace.xcframework.zip",
            checksum: "752918c012a5e3014bdb3670c81116b5d638db6a9f822945e42d7283df55068a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260716112654.29494260260/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d476892b24e8a7ec551f396bb3b5dcd172752e079fff3a91f76a92d6b0b68b9f"
        ),
    ]
)
