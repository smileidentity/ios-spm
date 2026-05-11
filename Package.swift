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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511125225.25671284250/UseSmileID.xcframework.zip",
            checksum: "fc0d3d7a34b7cae1a14bdd2b97ccacba9e3f3b6f3f52e3086261f5963d1f7d57"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511125225.25671284250/UseSmileIDML.xcframework.zip",
            checksum: "942e9d554b34bc91850355fbf6e006a06c8e528ba4b2ded74af3fbcb3ed0d3d1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511125225.25671284250/UseSmileIDVisionFace.xcframework.zip",
            checksum: "ba625b95bdeddacaa8a4c16a323f9182bec8339ae53bfaeeb65fd3761838a6fa"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511125225.25671284250/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "f8d2e7845e02ae81d74a8f41b6d9b59a1d422faad2512d04dfe302baeab90706"
        ),
    ]
)
