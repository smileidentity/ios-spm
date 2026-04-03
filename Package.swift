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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260403154032.23951998988/UseSmileID.xcframework.zip",
            checksum: "cb9214b54f7f5e3e239e41f1820adf25d0ae1dd5fb91a4562cd0006b0bcd504b"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260403154032.23951998988/UseSmileIDML.xcframework.zip",
            checksum: "68e69331fcf3dce5be6f45a1a6dd4e262f70d09815db21739d53bd5109be3aa3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260403154032.23951998988/UseSmileIDVisionFace.xcframework.zip",
            checksum: "a5a0612bacb53b10d23afc59409ea828ea73501e7284ca6d581ef87cf826cdf2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260403154032.23951998988/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "7f715e050b481fb92e3fcc9e6db53eb05183d3bfefee173424524d87b6229b34"
        ),
    ]
)
