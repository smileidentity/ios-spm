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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511165538.25684500562/UseSmileID.xcframework.zip",
            checksum: "75f2523f3d61bc145112418a085128af6ce94a7c24683faa0db0bd54eb49273c"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511165538.25684500562/UseSmileIDML.xcframework.zip",
            checksum: "705080261d74cc8900e3753ca0212f27c2358ec717143bdc8d1d2971f77c85cf"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511165538.25684500562/UseSmileIDVisionFace.xcframework.zip",
            checksum: "bd2af3367a0331d7dad10807bbbda42b3cf23197ec143d169312f89bee05ecc5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511165538.25684500562/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "37952c514c7932f565dd9c9ed49666878b89e7a48edfb555464ee325e7b64156"
        ),
    ]
)
