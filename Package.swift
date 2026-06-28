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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628191035.28332953556/UseSmileID.xcframework.zip",
            checksum: "7542c6862f4534d3c6e6269551321b3186791727c3ea94a07d80d7819c57713b"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628191035.28332953556/UseSmileIDBridge.xcframework.zip",
            checksum: "ce4365b38fa9c0aa84bfdcc8ca4a0962a2b316dafd407e97053cc3fe118d3d87"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628191035.28332953556/UseSmileIDVisionFace.xcframework.zip",
            checksum: "187432806b8cf4057873b40d6329c2d5a3f80210896d65c50a24d01ed880c9c6"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628191035.28332953556/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "c72255739f6b5748a6f1a11720493f26fb1b11af89464aabdd063aa5cbb6dacb"
        ),
    ]
)
