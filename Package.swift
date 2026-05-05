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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505183511.25395030614/UseSmileID.xcframework.zip",
            checksum: "40100c7a782bcd8c1764364ba5579bb4cb55eff1c590a2d5829cda2b6ec9d21d"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505183511.25395030614/UseSmileIDML.xcframework.zip",
            checksum: "c1719b28e51b7bca8a4f43b434688fcdc1beb5b70d1a01ce2bb001fb962b54d8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505183511.25395030614/UseSmileIDVisionFace.xcframework.zip",
            checksum: "046fe9421949fe4fd847784edcfc4061b6eeaa535272b8cff32247e56519cee2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505183511.25395030614/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "700e2b3036546f1f06361a4b3682c1e0eae543360afe09bfae44e6d196239a6e"
        ),
    ]
)
