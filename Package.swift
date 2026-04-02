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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402113721.23898504783/UseSmileID.xcframework.zip",
            checksum: "b59e0836c97f179d6c1d44ee34cdb547005151721f224b747a558ffbdc886c23"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402113721.23898504783/UseSmileIDML.xcframework.zip",
            checksum: "a31765c827cf8e22a89493acbb147be710a92fcef54fbd679853d451e049efc0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402113721.23898504783/UseSmileIDVisionFace.xcframework.zip",
            checksum: "863e4300aa8e5201ccfcdc1762f5e6b1a14ffed6cfbdd6c6ba2e3c45f6802793"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402113721.23898504783/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "f5bf7476f4fd5ce5a0c88268dbf64578714fdbff8d1bf174e37cc45e47c126bf"
        ),
    ]
)
