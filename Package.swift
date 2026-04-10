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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260410100659.24237763966/UseSmileID.xcframework.zip",
            checksum: "e84cd7d7fdc8e48a6d7c5d86cd8b137bb3be5d2919ba73c508efccf5b2e243ce"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260410100659.24237763966/UseSmileIDML.xcframework.zip",
            checksum: "cd6eed1b802d71988a0701cc07f228297f8a78bb7316f60c161e343948ddf968"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260410100659.24237763966/UseSmileIDVisionFace.xcframework.zip",
            checksum: "9d4032a4f4ac72a5d6baa008f563e1ef6eb3ebfae60c87ab14196773ef45b796"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260410100659.24237763966/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4917ba89f6a6c47408522897b25d6dfe109fc759dd3fb42f302b5e35d5823825"
        ),
    ]
)
