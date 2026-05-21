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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521184601.26246176342/UseSmileID.xcframework.zip",
            checksum: "9f5a42610e0ad52d1c241307e7f87f34208a736d54e4f95e59dda6d3142ed723"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521184601.26246176342/UseSmileIDML.xcframework.zip",
            checksum: "3e1f5d074bae454e095d81c6119e20c195600ff84a7e00f9e9470a91f38c0530"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521184601.26246176342/UseSmileIDVisionFace.xcframework.zip",
            checksum: "1ac6d41d4c243ac376fee4f364e4621fdbc3afe46e786c19637c78051e8e9ef2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521184601.26246176342/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "7ac63efea1a809c2df2d0acac2c2ce1ba35386bb2171d7e602b371e24451e8f9"
        ),
    ]
)
