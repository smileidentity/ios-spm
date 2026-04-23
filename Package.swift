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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423185758.24853268564/UseSmileID.xcframework.zip",
            checksum: "bd54865f5fdb336d94778856b7466429f416b31ba0215673d765c27c399fefe2"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423185758.24853268564/UseSmileIDML.xcframework.zip",
            checksum: "366b868abfa2e0ac38ec0e490db18cf2283a24918ae57336dab0b3763a178419"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423185758.24853268564/UseSmileIDVisionFace.xcframework.zip",
            checksum: "ac491c42a688eeb9964bee2784d486b4cd4a78bf64f1927830bb338562d719f2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423185758.24853268564/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "dc90a7fc08d4d29f736ab5dc4999714b218a46efe89ef04f7248c73f9d4f309f"
        ),
    ]
)
