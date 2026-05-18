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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260518191933.26055135390/UseSmileID.xcframework.zip",
            checksum: "dbc76a39cd4d5c63d9a177b51bd555169263d8c92cc73ca98a5131a2de3faa3d"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260518191933.26055135390/UseSmileIDML.xcframework.zip",
            checksum: "e98d08ec4c26c613c6ffee596460c1edd4f7cdc07869f5c8937d7a7789722847"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260518191933.26055135390/UseSmileIDVisionFace.xcframework.zip",
            checksum: "c68a9b583c096320cc85a61756ae0ff1097a4c94bb0bc1f9991905032bf04c44"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260518191933.26055135390/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "1d75ab1ecd2e96e9146e928cf1263d50bd74e887c5fb6b2279b8ab4b6b36e08a"
        ),
    ]
)
