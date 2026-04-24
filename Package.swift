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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424081414.24879468635/UseSmileID.xcframework.zip",
            checksum: "7b6f0c3506484d594c6c599e1c9bd6b50e9275a9279088a8a0d59b161e82e421"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424081414.24879468635/UseSmileIDML.xcframework.zip",
            checksum: "ae7a1e2032d5d4b3de0e4b9b13400167bd65115976ad3a3885e4275b5e11b1d2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424081414.24879468635/UseSmileIDVisionFace.xcframework.zip",
            checksum: "3d7e8599f5f9b7e7113d73ced993d35f1f237b4c7ebabb330db8f3320cd92292"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424081414.24879468635/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "c5e6d31ad49e3f6a27483a1ce22df7bf36816cbe4d941429103e9ba41cf559ff"
        ),
    ]
)
