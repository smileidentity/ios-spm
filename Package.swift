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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525162659.26410184596/UseSmileID.xcframework.zip",
            checksum: "bf17c72484d2c77262ad42fb7b66bc52672c892612ff542b593b1cee7e9c6c51"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525162659.26410184596/UseSmileIDML.xcframework.zip",
            checksum: "a67a0005cf8612d816a06ba7defc9eeb87c251f9fb183f2cd594fe9ea4629b66"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525162659.26410184596/UseSmileIDVisionFace.xcframework.zip",
            checksum: "fe0b1ebd3e4ff861c464f85f6454d13e70b226e2c6fd91af416c798d00fbff39"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525162659.26410184596/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "147d3c7bd62c17eec15d951deea88f4e0819cf18e474543355e324a6449ebbb2"
        ),
    ]
)
