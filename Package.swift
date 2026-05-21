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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521124329.26226647072/UseSmileID.xcframework.zip",
            checksum: "63bf8d8c12a8b266e2c71ba8beeb5930d9e29dd9a388becb0c3bf9eecbfba16f"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521124329.26226647072/UseSmileIDML.xcframework.zip",
            checksum: "be14e2d4f29beb284ee636e3053e3bdc3ea9f7c1134dbf58d891cf96b8cc6dd8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521124329.26226647072/UseSmileIDVisionFace.xcframework.zip",
            checksum: "982206e33b4126c4ca2dbe2463dba3cd64fd2ae1f0e9c0a9184389d926f5a0ad"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521124329.26226647072/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d15bea50183d048ca671fe61f251a6628124c920de4c5868313b75f12a8b381e"
        ),
    ]
)
