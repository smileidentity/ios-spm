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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416032512.24490340808/UseSmileID.xcframework.zip",
            checksum: "0f5a1785ec641494270c7ee2b90b1528018f42e26d6982c18cea8e530b183494"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416032512.24490340808/UseSmileIDML.xcframework.zip",
            checksum: "0f07a72b3a2e197bb09ab4b980410db439a463ea90ec8c6ce3626a9b96d90f2b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416032512.24490340808/UseSmileIDVisionFace.xcframework.zip",
            checksum: "1bd5979900168d0f00287804e174acbd17abf00a8dcc25be946cabf4915d1b7e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416032512.24490340808/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "87bb943bb9523dc126920a943ee223fc089d9ebbf3963b058fab3087f0cc5d26"
        ),
    ]
)
