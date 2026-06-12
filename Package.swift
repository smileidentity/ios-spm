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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612164929.27429910416/UseSmileID.xcframework.zip",
            checksum: "2c9926c315f23da48e5bac2a7a82292b287f470ab7b51416eb4be8e4a26d8ab6"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612164929.27429910416/UseSmileIDBridge.xcframework.zip",
            checksum: "df673418d05c312be7a037cdc96bbd3b9111afc73ed080cdf8b8b296e7b1dd55"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612164929.27429910416/UseSmileIDVisionFace.xcframework.zip",
            checksum: "6cad23e1281e3a5c642f77a79aca78facdade5fafdceb872d5d98e48e9a3db05"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612164929.27429910416/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4e7255048e1df8a3d8de08018a5d27a38a8255f575de1d17aaa56de1bd36bcde"
        ),
    ]
)
