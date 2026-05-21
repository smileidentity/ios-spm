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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521131218.26228118830/UseSmileID.xcframework.zip",
            checksum: "d7f0d25d12a8946e575253a28f5bfd1eaee03c990cc20e93961b899bedb340b4"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521131218.26228118830/UseSmileIDML.xcframework.zip",
            checksum: "b1d7db01045741e18a8e127e1644da37c89f401b1c0c2d8bb6480a8793983208"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521131218.26228118830/UseSmileIDVisionFace.xcframework.zip",
            checksum: "116b49340dc84caf8cc2c4fd9154172a0a9c35e3c0d049021858efe1b08f8e3a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521131218.26228118830/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "16114bdf0dafc61e8252ea38578510f7ac0558140b1232caa7038e5e1e3956ef"
        ),
    ]
)
