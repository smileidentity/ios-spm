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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507155302.25506793124/UseSmileID.xcframework.zip",
            checksum: "d0a636dc2a85c6b109d48f500c7ed119926135046d55d6cb5f9ec9fc2ce3a2a0"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507155302.25506793124/UseSmileIDML.xcframework.zip",
            checksum: "e7fc54060899cdb1182846d1dc7d8da03005542f35aa9e93ade4139d40b8cb68"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507155302.25506793124/UseSmileIDVisionFace.xcframework.zip",
            checksum: "65c1b1dcdb592691b713f78fb34ce2e2c33dd53a594ab267a30cd2fe0cde297f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507155302.25506793124/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "eb996e71925898b3e215f50ea2ea304680de94697e93a4c6f8543d3f09bd8557"
        ),
    ]
)
