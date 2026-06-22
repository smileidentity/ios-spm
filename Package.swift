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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260622090611.27941681850/UseSmileID.xcframework.zip",
            checksum: "8e06458e14f09b5206febd5b446df88066ea01b9fc1864cce163367b9c9e8172"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260622090611.27941681850/UseSmileIDBridge.xcframework.zip",
            checksum: "bc726501eda1bdf719d48a5da7ccca987a2c0bf99f76ee912c16a883ab6258b0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260622090611.27941681850/UseSmileIDVisionFace.xcframework.zip",
            checksum: "76ab5e91c698a854d93c4f8df3cf991c9add27a1219b3b9e8e76c3d0211a0a25"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260622090611.27941681850/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "06f7dde5025fbd889f99bc10ba0673f85d5b6e1e2c6a5b8d6f32d37e2fe937fc"
        ),
    ]
)
