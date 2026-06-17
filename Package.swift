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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260617083343.27676092443/UseSmileID.xcframework.zip",
            checksum: "872902b3e503aed6c554838f5cd78dfe55f9b83c22fc08588ac371fd2b7b4bbe"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260617083343.27676092443/UseSmileIDBridge.xcframework.zip",
            checksum: "9915559f5b2f1194abc72de420a145305ca4438cc3dc05b32a7a84f845011100"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260617083343.27676092443/UseSmileIDVisionFace.xcframework.zip",
            checksum: "ade7f2676362dd2dc216793c78954b58d8e1d926991fe8bd46cf7d86c1f9cd5d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260617083343.27676092443/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "9bea1f1244b2742b209d90aa864f8c7fb554e29ab85b958633ac85a94a003f95"
        ),
    ]
)
