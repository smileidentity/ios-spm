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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428141951.25058377851/UseSmileID.xcframework.zip",
            checksum: "71b9b8e51ae3d9e4ef1a2c42c25211a9e698b2075758427cc3c2fb894892daa2"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428141951.25058377851/UseSmileIDML.xcframework.zip",
            checksum: "f0bb5b3e3e08e2b497b9f00de9eaf424b6ef2b8c0470089d8a242408c7dfa44b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428141951.25058377851/UseSmileIDVisionFace.xcframework.zip",
            checksum: "1bc6e2494d2d2d8a8162f4b17a51bacd0eeeb5ca868534f590b41793acf275a8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428141951.25058377851/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "1804c672712fb2ba518b4f12a0eff15cd4400d56f0c9d2cd570cc8bd0266185d"
        ),
    ]
)
