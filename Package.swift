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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519152106.26106857975/UseSmileID.xcframework.zip",
            checksum: "5b9c7deb946dfb576350d6328af78a9f488dd80bb8e8b311b3b04e7cfb43529e"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519152106.26106857975/UseSmileIDML.xcframework.zip",
            checksum: "f02cedd47ec40a23f4b48c681aeaaa0f310ba78124b5b796a16579a336b75daa"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519152106.26106857975/UseSmileIDVisionFace.xcframework.zip",
            checksum: "cdb67a00fb76dd9877743d0dfd904588170c7b8feb44950b1fab7255e9335963"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519152106.26106857975/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "021ecad6be51e31b250e436b823c6dae3f622a5e6b26a816bbc3fdc9c97e7089"
        ),
    ]
)
