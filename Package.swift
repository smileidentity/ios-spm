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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260504080438.25307986986/UseSmileID.xcframework.zip",
            checksum: "ca29e0cd69d42a2ceeff23597f962d03562901732e2f9a170543440b2bb5c6cf"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260504080438.25307986986/UseSmileIDML.xcframework.zip",
            checksum: "49f5540d93b6c3fb4d4624c51ebeab5a2bc6f67b43a9cffa67ce210def30e416"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260504080438.25307986986/UseSmileIDVisionFace.xcframework.zip",
            checksum: "8a25d16475981aa075b266d55d1a5eca29b62d5f1d43c80472b8c4104e9d9b84"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260504080438.25307986986/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "a5d36e1699bc4cf7a1fd14bf39788b92720bdd8e6b4c3fe04689fed3e78b4e18"
        ),
    ]
)
