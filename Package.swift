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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525133033.26403034484/UseSmileID.xcframework.zip",
            checksum: "3fa019bfe4ef5b200f2eb5cfd6da955c51b7f1d1d89b6f1cea94cb4afd9adaf6"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525133033.26403034484/UseSmileIDML.xcframework.zip",
            checksum: "325f12d29d25eb6e52df37ce1453e89fc060abc580e4215aea5b8a013fbc6532"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525133033.26403034484/UseSmileIDVisionFace.xcframework.zip",
            checksum: "83f98e7781f07f1377e64dc1db0a562c3549cac0c0b7ddfe11361b0365b3ec1a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525133033.26403034484/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "677d9a60b4248f2aab78e4d37b1e6962407ddb1ebb3341844283bc5910df6ac8"
        ),
    ]
)
