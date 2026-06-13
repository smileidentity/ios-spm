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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613092710.27462888213/UseSmileID.xcframework.zip",
            checksum: "bf9460dd1c28b77c32e75194bf54447b3581d5c46bb6c8e96b80a99d7f58e4bd"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613092710.27462888213/UseSmileIDBridge.xcframework.zip",
            checksum: "0ac89897dbc26c25f1d4fef93ee85d9ab9ac8a345bb3c30a87d0f505a55873f9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613092710.27462888213/UseSmileIDVisionFace.xcframework.zip",
            checksum: "b2e41de8be3f676e1958a9b68d71f7f3216cd2cc780024e6d881ce7eb521311d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613092710.27462888213/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "f86daf0ad9c25c691f883dc62ac2c1ce283178c7bf43faaaa481c37f50755a47"
        ),
    ]
)
