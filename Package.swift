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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260722135957.29926173730/UseSmileID.xcframework.zip",
            checksum: "7648ad1a420b8d61e36c3d4415b90dbfe2dffdb39986e07ef4d8a82770b0d8d0"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260722135957.29926173730/UseSmileIDBridge.xcframework.zip",
            checksum: "3315173dd86a8def0764e712aae78532678f5796bc4277ed66be5d84ec5221bc"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260722135957.29926173730/UseSmileIDVisionFace.xcframework.zip",
            checksum: "bc2c505d3b0322bbc349a5d46e7745adb893fa610f26fc68f213b017dcf41868"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260722135957.29926173730/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "025f8033339b7f418fc9f007602ecb27b3eb7fdcebf7617d741322793fd4150a"
        ),
    ]
)
