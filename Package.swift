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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519080448.26084503268/UseSmileID.xcframework.zip",
            checksum: "9955c99f09baea3f087e83d5d73c7ad7670f23b245d9b00a8dd9974781ab5e59"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519080448.26084503268/UseSmileIDML.xcframework.zip",
            checksum: "7381e935f7e7dac80a01ba402a4a0d198e8eb1199924ad4727962c38e86429bb"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519080448.26084503268/UseSmileIDVisionFace.xcframework.zip",
            checksum: "851eb5cb112dff024012d306f4e8b5f65afc2adbb40111baed6f4b7031afed50"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519080448.26084503268/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "cf6d2db2f82425a78128fed373cfc595c06bd5b15e2f17ac6beb76deda0235db"
        ),
    ]
)
