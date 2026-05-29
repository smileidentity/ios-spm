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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260529054148.26620343258/UseSmileID.xcframework.zip",
            checksum: "4e7dc5212f6ea391d949db921949fad46ebb35c73d46414409acc176c860b09c"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260526083538.26441596566/UseSmileIDML.xcframework.zip",
            checksum: "5afdad4929a5406c2a00fdc1ff974e142bec0864453f969cbc6091b18e8e65d2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260529054148.26620343258/UseSmileIDVisionFace.xcframework.zip",
            checksum: "27f467b5aa1765ab874ec3a5d1ae2b1404f45a06f7ecb7c8b2812bd628ccde5a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260529054148.26620343258/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "86006ca76131486fccf34e6ee894eecee08c0be93f6b620188610591b753c063"
        ),
    ]
)
