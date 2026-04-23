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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423112345.24832471880/UseSmileID.xcframework.zip",
            checksum: "ad93693726248012157ddf993d258a4a8ca4aca62b534e775f0255ba3e7d7a7a"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423112345.24832471880/UseSmileIDML.xcframework.zip",
            checksum: "5f626030a3c57efbbea59d504dcab60472db2de7a60d471a0ff9fc2aa4b8d4d6"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423112345.24832471880/UseSmileIDVisionFace.xcframework.zip",
            checksum: "dacf818e999b08dcbb545463e7b15c84f31417c963391bfc9fa311fff119b0cf"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423112345.24832471880/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "3decfd19ebf6f2a626ed94360858386c4f72075957ba29b314536e8d175657ce"
        ),
    ]
)
