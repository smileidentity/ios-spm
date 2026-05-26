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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260526083138.26441413720/UseSmileID.xcframework.zip",
            checksum: "248d8474b5e1a66be0d70d59cd2236178a9779624cc42e67625c69c996eab3bc"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260526083138.26441413720/UseSmileIDML.xcframework.zip",
            checksum: "b1466e330f041f4595457681be0ede268d284ac230239379bd622694933278ad"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260526083138.26441413720/UseSmileIDVisionFace.xcframework.zip",
            checksum: "0610eae8f655dff5e7e5b8bcb6bfe5bf093ecfd16632aa47c5e48831b4328a3d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260526083138.26441413720/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d7cbe5db04badec9f4dd434d89ddd8971d3f3a20d946b13c7f5e4418f349c2ab"
        ),
    ]
)
