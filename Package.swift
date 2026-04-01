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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401123807.23848949303/UseSmileID.xcframework.zip",
            checksum: "a1e1b318d1be2d8c05fad25df1b0f01e481c346e4b4e21f6ab204827c0eb38c6"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401123807.23848949303/UseSmileIDML.xcframework.zip",
            checksum: "c3b65d2d189bf6e6e6b32db99f930afb59a7645ab3b1b2aa813e5a913e5be6e8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401123807.23848949303/UseSmileIDVisionFace.xcframework.zip",
            checksum: "016c7671ade19f086864eae4f46b07b13f5d246f8dd368a354457a94f1c35950"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401123807.23848949303/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "e80ab738557ebb4b2ae373ac8a252606fcc4b549263a72e327a577affdfe3b11"
        ),
    ]
)
