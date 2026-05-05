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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505160732.25387804109/UseSmileID.xcframework.zip",
            checksum: "4b857b82f85cd8c17f292e8b1d1593f9b62c71724fd1af8b1118c60257c46bba"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505160732.25387804109/UseSmileIDML.xcframework.zip",
            checksum: "72889cde54cb4d800df2b990ea5ad5b828efa9510e6819e0d8b858171247a0c0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505160732.25387804109/UseSmileIDVisionFace.xcframework.zip",
            checksum: "a528b89f466fffeb73073728ab396954d547c0478aaa40b5357c945245670c56"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505160732.25387804109/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "35862873c857d2afa72092ad57eabe55efffcc198c54caa17a350692f528459e"
        ),
    ]
)
