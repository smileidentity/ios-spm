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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401093504.23842053957/UseSmileID.xcframework.zip",
            checksum: "1c77f4452ddb38608bc50c66d52780237f3e585e0aac80f19fde69c2cfd1ebb1"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401093504.23842053957/UseSmileIDML.xcframework.zip",
            checksum: "02c7dfd0ffc621fdf6e79e2c3b14ca86e4242e35415e990f03ea1a239ba06a00"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401093504.23842053957/UseSmileIDVisionFace.xcframework.zip",
            checksum: "4983d0e56351d189685cc50006a11eb5d0f9ae4b117c03cdea6242f23c580131"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401093504.23842053957/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d62cd71569a5bc9d7e394c0ed3a99a1b666840523dc0131bcdfe7bef28ac8556"
        ),
    ]
)
