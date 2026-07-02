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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260702161417.28604770368/UseSmileID.xcframework.zip",
            checksum: "e41327258b596357b0e87ea7edb790cc845683d09451814e64f507434f85e493"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260702161417.28604770368/UseSmileIDBridge.xcframework.zip",
            checksum: "2f0ca9a79eec34b7ec77ecb91a45336b96d2bc11b016de89c07d2f1fb3327ce1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260702161417.28604770368/UseSmileIDVisionFace.xcframework.zip",
            checksum: "91d923ad2144da61c98aea68dd40380ff7e4ab2d4f64654c18bd3ebb3e0d9761"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260702161417.28604770368/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "8ed4d7fe7bb4a67c513fcbe80abc86ead78ad2fcf8e54b680e18e0f7dcea9681"
        ),
    ]
)
