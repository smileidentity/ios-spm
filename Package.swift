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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260410095805.24237424208/UseSmileID.xcframework.zip",
            checksum: "dec80b30ff80e6d43be2621f1aac74c9ad81f210ee2e6cdfe0c0a1bf8b0c169b"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260410095805.24237424208/UseSmileIDML.xcframework.zip",
            checksum: "93103722d2213aaa34257a8fd14cbdd2b740073f9095453aceec4bac45cae631"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260410095805.24237424208/UseSmileIDVisionFace.xcframework.zip",
            checksum: "fe194f9ac7d20c78cb1de0f97bed00bcfb432d788c4045a9892a507ed74a3c0a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260410095805.24237424208/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ba359321db50fdc772bca9317caeb90594e3702eb5cb39384b59b1fa3c78b698"
        ),
    ]
)
