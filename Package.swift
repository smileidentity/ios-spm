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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424110713.24886339014/UseSmileID.xcframework.zip",
            checksum: "0f7a064eeccf4057129561275e4d683030b228b3859cfa29a0723cf0bdbe13b6"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424110713.24886339014/UseSmileIDML.xcframework.zip",
            checksum: "c7bf86c10afbab3d89bf12b76020bb07f458aa2e630b46c2a7bca3d37bfe787e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424110713.24886339014/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e042209b954f19815ab0e53391a3ec199cf17bfe8b63c0d2ac36c4b148fc65fd"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424110713.24886339014/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2acb7a0cd49d4e89b827b8635c9e32aa77c12af5d47e13a76ce78e7c03f88e09"
        ),
    ]
)
