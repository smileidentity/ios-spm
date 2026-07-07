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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707212511.28899775471/UseSmileID.xcframework.zip",
            checksum: "bba92927091e26cabe223c6d6d2a2e38536df873781e1aaab9fb073e7b3e4fa8"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707212511.28899775471/UseSmileIDBridge.xcframework.zip",
            checksum: "e986570f7e60e8e92b2bf11ca3f46bbb3deb02fc889609a4a941b94e3fb787d4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707212511.28899775471/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d0b8011b5233231a1a54250cfbacbeec53a9d325d1674b3c36f8481fb60ecddb"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707212511.28899775471/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ab4f2ddb3141f58a6e73005b72008742fe2d8c79b7c7d69096c719593ac9e485"
        ),
    ]
)
