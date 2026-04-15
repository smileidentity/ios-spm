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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260415151621.24462613500/UseSmileID.xcframework.zip",
            checksum: "ce98bc663ffd01d3513fa5f0aac7cd9740d8f80cc509cde64fcedb3bafeb0ce1"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260415151621.24462613500/UseSmileIDML.xcframework.zip",
            checksum: "aa7ec073c4689a3ec4401132ef8c927ec28bc60c58d3d3730fe35bd28bd253ee"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260415151621.24462613500/UseSmileIDVisionFace.xcframework.zip",
            checksum: "b6a9a3108bc3498bf6fbc5aef296e68a87bad11fba2f1da13cf41a13eb7d06bc"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260415151621.24462613500/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "82b6e4df733d99eb80d374f1ef806bb039d2ee5a2c984dc73eab28b08aabe478"
        ),
    ]
)
