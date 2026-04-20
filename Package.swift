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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260420114437.24664639499/UseSmileID.xcframework.zip",
            checksum: "8504331176045e74b42e7bb1bc8f384ea0c1ab526924ec5cbcab89c91d592194"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260420114437.24664639499/UseSmileIDML.xcframework.zip",
            checksum: "ebbbd4927c571d71ec38c3a125b158ae8fd62ae499859cc3f9282a932eb8c40c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260420114437.24664639499/UseSmileIDVisionFace.xcframework.zip",
            checksum: "5f74c77acf68dacd8b417e05352edc5ea2b912ca8f33ab98ff5fd24b015a4a07"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260420114437.24664639499/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "82c7d4fe5296ea083edbb48c63af6d9d2002306081d382fec429d70fbbff5be9"
        ),
    ]
)
