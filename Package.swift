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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428143907.25059420527/UseSmileID.xcframework.zip",
            checksum: "dd2b396eee855d9783133761d805e56851ec51f006ad48d07406a68e1eb5dc7b"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428143907.25059420527/UseSmileIDML.xcframework.zip",
            checksum: "fba876c3ded7299b03c6c7189f76b75576ff48b62f30e4b0d6f26284da921e39"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428143907.25059420527/UseSmileIDVisionFace.xcframework.zip",
            checksum: "00f5602e84b502b5d6793ab8484ae599f52e3db5de5bcd1bda09c6a8d5276eae"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428143907.25059420527/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "c6cd8c19f7051d8382d3b9464cb9be0244241926e56eb9e13c74d3cfec32cfe3"
        ),
    ]
)
