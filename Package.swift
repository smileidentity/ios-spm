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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507211646.25522562547/UseSmileID.xcframework.zip",
            checksum: "7bc41490d18d1b433488f58f31a2f70fc16a68518a4e58aa12a3fe92eb2a959a"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507211646.25522562547/UseSmileIDML.xcframework.zip",
            checksum: "86a3db35cced4f2e6ff17f0fd0a47d15c24a2af168ca2bc915c48a68eeff0dab"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507211646.25522562547/UseSmileIDVisionFace.xcframework.zip",
            checksum: "9f3ffc3f3ebb0fd7416eff7009cdbdd7754e0efe82c9269945ccb5e6f77b40e1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507211646.25522562547/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "aba13f85959f810c7c5d73a6953a94109e7293c844510583e3e4c65284124680"
        ),
    ]
)
