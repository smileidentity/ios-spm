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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630080215.28429113524/UseSmileID.xcframework.zip",
            checksum: "06f808e379e0447af43c9320ed5495a5ca9eb2b484f03f062606289ef8cd8b41"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630080215.28429113524/UseSmileIDBridge.xcframework.zip",
            checksum: "96d194be6e9bef09882e963496f357f42fda3df5866cca60e99ae08d3cf2f221"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630080215.28429113524/UseSmileIDVisionFace.xcframework.zip",
            checksum: "f5ad3fef978c959bd5c202631039fbd974995a373baac9bcd80545ba53cebe83"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630080215.28429113524/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "6238306ee4ad82e9c0035e86ac1291d681214d79d5eb6e52fc25f543caeec12e"
        ),
    ]
)
