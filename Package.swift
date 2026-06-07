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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260607214809.27105789913/UseSmileID.xcframework.zip",
            checksum: "4a8d9df29fca696712d1a96bbcebf8b93b47a1ee866cb9d6c43d153ec933f851"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260607214809.27105789913/UseSmileIDBridge.xcframework.zip",
            checksum: "6754218b75830a8a670a6ae98b157e1fe84e332198d012cdbab04538184b9644"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260607214809.27105789913/UseSmileIDVisionFace.xcframework.zip",
            checksum: "69ad0709f844466ee7f8d183178a72bec8baffe5cd67acb3212d2e23c4268d96"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260607214809.27105789913/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "da0ed618819194885c71f76c859b54fa3fbd8cd89af1f46f090c22bd6b678031"
        ),
    ]
)
