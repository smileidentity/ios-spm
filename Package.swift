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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260524214343.26373562650/UseSmileID.xcframework.zip",
            checksum: "c911ba1977f1b123dd753514410a115da5d739931f4424e63dcabe53d1c4f101"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260524214343.26373562650/UseSmileIDML.xcframework.zip",
            checksum: "9fc12e124fb0022c75b471a4c04b1134b375d6c43973b3ddf94aeee554fabb11"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260524214343.26373562650/UseSmileIDVisionFace.xcframework.zip",
            checksum: "a72fd0fc2d16d1e7a3b48dbd6e09f2ba7cf15c59f0435f3b3ee3defcb7f0e0e1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260524214343.26373562650/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "60a88c645794da219df2a69b17f28391274d7aefc7c868315f3d86176b737599"
        ),
    ]
)
