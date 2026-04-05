// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDML",
            targets: ["UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260405110645.24000224611/UseSmileID.xcframework.zip",
            checksum: "03cd62d7d65e04c605af0d278b0782eb101489c615fed10f278c8febef4b2930"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260405110645.24000224611/UseSmileIDML.xcframework.zip",
            checksum: "2d5afb9ab4fe3e955af6e87e9784df9be36e254454d7a5e9b8abf25cccce5c1a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260405110645.24000224611/UseSmileIDVisionFace.xcframework.zip",
            checksum: "63c2cd9e6650cb268d60fff44fcb234a40ed34d9ebf08c1911da3377d6f6f045"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260405110645.24000224611/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "0d4b0bf49d4b4317272b9ba173097154afa3a812592ed6f8518372e4c2cce7d5"
        ),
    ]
)
