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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428153318.25062284375/UseSmileID.xcframework.zip",
            checksum: "7432a17a9e265743a47339eb2e7dbaf1fbbebd1f9339abfb237c6236cacd7c56"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428153318.25062284375/UseSmileIDML.xcframework.zip",
            checksum: "094bd0612791b5669ce9c1e9b5b472f4f64adbcd96ffe635b54449a14146e689"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428153318.25062284375/UseSmileIDVisionFace.xcframework.zip",
            checksum: "93e66913abdcba7d56025f580ad175fa23bf83a162018b2c47bf727794d8a0c6"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428153318.25062284375/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "6e048726edbcc7575eec5f325a118ec4581fdf0bb63a58cb3b2220f1ebc8ab4f"
        ),
    ]
)
