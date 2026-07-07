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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707094547.28856992341/UseSmileID.xcframework.zip",
            checksum: "ceb641f787e331698a099c34de0c26ae3c729aa96279988e2d52812c595dca84"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707094547.28856992341/UseSmileIDBridge.xcframework.zip",
            checksum: "5dbb47e0dad946a2543320dd71a2325aefb50963e3048b41ee0ae494dbd8032a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707094547.28856992341/UseSmileIDVisionFace.xcframework.zip",
            checksum: "2f5e2c4f754d53c4760370c32b34d001450d98e0255df1017ec0471b9de2f244"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707094547.28856992341/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "b3024cf2450eb1c663e41f8d0bcaa1446933a72f9a19d41c93eed1fdde573284"
        ),
    ]
)
