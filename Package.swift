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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522105900.26283864850/UseSmileID.xcframework.zip",
            checksum: "08b3626bb04791fdfa2eb0854b58fe5cd40db16d13f92fe217c0392e600b9c16"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522105900.26283864850/UseSmileIDML.xcframework.zip",
            checksum: "3e8a114b9547308bb860deb92bc8857399d17aa20986ff9bdb0f9e1e645ac7f8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522105900.26283864850/UseSmileIDVisionFace.xcframework.zip",
            checksum: "374fbd787b7d1db5d7e6af69664b1db3d001b0592a4d58c4d28144f1dde48c1a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522105900.26283864850/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "a3c166ac2b63f9a576c0c35ef2a96845e83de66c40b40a97c850dc8fe099c1d3"
        ),
    ]
)
