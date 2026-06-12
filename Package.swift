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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612102158.27409756606/UseSmileID.xcframework.zip",
            checksum: "ba10d876d718da00f83a45b2bb8e32d086953d599cf0dcca028fc66aa1a4a2ee"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612102158.27409756606/UseSmileIDBridge.xcframework.zip",
            checksum: "2daf3b2bc0ce57304030abbe0de559f56f4bbd93f03a6ad0d2b8004908071c08"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612102158.27409756606/UseSmileIDVisionFace.xcframework.zip",
            checksum: "8fe618859c8cffaf4753dc19666a63f02c71d9468f3437145edaf00582d72023"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612102158.27409756606/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "3997a237d7fadcd113caba7489737b6557bce243d3362598fa9db29c12681777"
        ),
    ]
)
