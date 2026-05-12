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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260512105912.25730116420/UseSmileID.xcframework.zip",
            checksum: "e189d7069dd41507c3fae8208b1c265c3113ac75c96c2c95c32acba6b295936d"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260512105912.25730116420/UseSmileIDML.xcframework.zip",
            checksum: "db6532e349e225d23d0e8dbac43b3644fb721b112ca808b916131979b96f1388"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260512105912.25730116420/UseSmileIDVisionFace.xcframework.zip",
            checksum: "75ae0c4c680a1929d033f647d41d3ae9f4358336eb540c12eb289c143c24f3d0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260512105912.25730116420/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "6c08195e29da0cb32b4a02694236f72b59e7d3d425bb99819e2f5d1fa9ba7b37"
        ),
    ]
)
