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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628161536.28328294772/UseSmileID.xcframework.zip",
            checksum: "1b01178074737eba78e62f047d8fa4272aaf3af73a0f896a442732bbc9974aa8"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628161536.28328294772/UseSmileIDBridge.xcframework.zip",
            checksum: "d975293fad644387993030af718a55f50adef91bbde24f5d1a1dece101ff06e1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628161536.28328294772/UseSmileIDVisionFace.xcframework.zip",
            checksum: "bff5d4af4ed3de7c08fca4baf06dfc1caa0aaf6815706a1b9215feba996ff3de"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628161536.28328294772/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d142de61fa6aa9c63a4ab380bdba33b6dfe875ea9a08a291765c26dd234e9c97"
        ),
    ]
)
