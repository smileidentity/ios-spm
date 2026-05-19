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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519055027.26078945540/UseSmileID.xcframework.zip",
            checksum: "569379e1fdbd19eb523103d9192e540853e67a6dc373e432912f545bb4c211d9"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519055027.26078945540/UseSmileIDML.xcframework.zip",
            checksum: "969351cc73d9c4e5332ba1f5098d0f3fa9350a1a15d032bf94c0bd76789f87d2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519055027.26078945540/UseSmileIDVisionFace.xcframework.zip",
            checksum: "ec53587a83c1e0bb0dad3a61b28b26cbcb98cbeac570e5e62bfd8b1008d5b6e1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519055027.26078945540/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "b192333c9c86020411358245e297009fb50a6f97eba4d0bb6188020882459da3"
        ),
    ]
)
