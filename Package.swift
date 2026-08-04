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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804115726.30906688857/UseSmileID.xcframework.zip",
            checksum: "1ac00c7b564bbe3f26d6a09afd3d7d8ebfdbfe1c25c6b88c91e182b3315fe046"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804115726.30906688857/UseSmileIDBridge.xcframework.zip",
            checksum: "6ccb0d35027b777202906b457d90e2fdecdf37761cf9bb4dccf0c09b1db68d5c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804115726.30906688857/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d1140fa518ccdd0eea7129160c1cdf628b51e471df0d192a51c195ad3867f2c8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804115726.30906688857/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "68707faca6b9e83a3e050267f1dd00b21aef5a25ee4d687f039944a86fd755ff"
        ),
    ]
)
