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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260420102408.24661364463/UseSmileID.xcframework.zip",
            checksum: "d9e3b884b9072fff49d348d04d33f7cc34b54d2d2972aa44c5a2e97b72a7a9f2"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260420102408.24661364463/UseSmileIDML.xcframework.zip",
            checksum: "a30f3dc335c845b903afc76fb501702a583d34cf641b059f35300a626dc19649"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260420102408.24661364463/UseSmileIDVisionFace.xcframework.zip",
            checksum: "476666778a0d927cd852491ba8a8db99f6eb9a07543cca1465e3ad8d0b96221e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260420102408.24661364463/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "6518222e9217fcb1861182b15f3fc4b6b2af0e75d2d3e05a663066d9af4fd787"
        ),
    ]
)
