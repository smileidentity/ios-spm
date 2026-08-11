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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260811150550.31504681110/UseSmileID.xcframework.zip",
            checksum: "c3acc4d5736cfe76593aea24e66112f893e6964ed23236d0cbac74186e0bb30c"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260811150550.31504681110/UseSmileIDBridge.xcframework.zip",
            checksum: "a309f9c93d5b0c6f95b98f6abec2bcf5f8f3a412ab0f3900e2274eda5ccfe519"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260811150550.31504681110/UseSmileIDVisionFace.xcframework.zip",
            checksum: "f1e6108090ef8fb4e040f7c76fbbc6ca37481cdc2be0b3ca24c61758501e7681"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260811150550.31504681110/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "a606120ece3c54782e6fccf154e90512b8bae7953db1a44e66bf507a3e41b017"
        ),
    ]
)
