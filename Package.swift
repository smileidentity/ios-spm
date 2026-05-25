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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525124501.26401171331/UseSmileID.xcframework.zip",
            checksum: "ebd04263ac1b2ae726e6ac06faa844f8963ea1344a68e9d857e60fa59c51b666"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525124501.26401171331/UseSmileIDML.xcframework.zip",
            checksum: "9cbbcc94d786490ebe73d39da28899fad157b3504cc6592c31d3c4b82378be74"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525124501.26401171331/UseSmileIDVisionFace.xcframework.zip",
            checksum: "cce5a38a9f17f84c7cc6cfedcdaf2c1d50c6ed54d5c38a3ff68585206e1d1dc5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525124501.26401171331/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "6e8e8589ad1872e038082391b139ac52d19c6784c9f4974a04bf42f82ecd98a6"
        ),
    ]
)
