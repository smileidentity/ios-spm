// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDML",
            targets: ["UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521194308.26249015593/UseSmileID.xcframework.zip",
            checksum: "76f64f88afdcb7208ca7aa46dbc32bb75c0b82de3b5a0cdfa2c990a9ccdfb015"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521194308.26249015593/UseSmileIDML.xcframework.zip",
            checksum: "cdf010ad466c1aeec9bed6cbbddb1c431e5d5aa72d9c9b628c99e1a79efa13c2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521194308.26249015593/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d8d433c22240f3ef9211dffcbcea8ad4f601b0970659e9c6539703cec9a4f53c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521194308.26249015593/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "e4d4aa93b53e6f309b7a170ce8a3c69e6c8bec651a79e41d2488877efc7a4bce"
        ),
    ]
)
