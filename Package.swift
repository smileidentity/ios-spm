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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521122202.26225604763/UseSmileID.xcframework.zip",
            checksum: "01eb73b1b4c6320ba521dabb11ef4f415f59c271db8009a9c1a760d000834a2b"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521122202.26225604763/UseSmileIDML.xcframework.zip",
            checksum: "c4f11d7ceec8d517d698477050dfa7a168556bd3d7821004aa07e754187032ed"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521122202.26225604763/UseSmileIDVisionFace.xcframework.zip",
            checksum: "a3c56a14ff2871e07241da96f719773b4b21c23f9a6c19dd5b5e2780dbf84ac8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521122202.26225604763/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "314fc26368caddc463ca86dafb5c73362836d8c0160bf77f265c943d303617d9"
        ),
    ]
)
