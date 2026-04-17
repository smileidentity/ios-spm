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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417120313.24564066291/UseSmileID.xcframework.zip",
            checksum: "e33fa88106bb0e25c0e89c6922056a70745c39abcfc00f198a0290730218b68c"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417120313.24564066291/UseSmileIDML.xcframework.zip",
            checksum: "4af18a0cdc0b4fda6d10abc9384d0272fb7688bd69e34dda54c25f26054e960a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417120313.24564066291/UseSmileIDVisionFace.xcframework.zip",
            checksum: "7fc4c259b893cd3776f5f056f251b69d744521c4e07ae48082d5126237272ded"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417120313.24564066291/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "8ebc21e610eba8d9c3bde2c88add3c24f5f376842ca636f0894a9c01719705c1"
        ),
    ]
)
