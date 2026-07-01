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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701211845.28548432661/UseSmileID.xcframework.zip",
            checksum: "a07489c420bb6ca8938c138e21e88ec8df3fad22a25dfb038849cc1d00e71abd"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701211845.28548432661/UseSmileIDBridge.xcframework.zip",
            checksum: "189e5160ad05df1d32c1ad63c1372d6ce2ee1fab83b30232e2a5604922a4e989"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701211845.28548432661/UseSmileIDVisionFace.xcframework.zip",
            checksum: "ff6bb84b4fdb77b84d9199622aecc401f947b4ff70ff2ad4ab2055dcb8c4ed73"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701211845.28548432661/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "f15b7fcbb5ba8b66da6aa484c87d3d8286d255532d523314d060c360866c538a"
        ),
    ]
)
