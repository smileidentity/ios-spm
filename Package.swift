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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260524195642.26371244606/UseSmileID.xcframework.zip",
            checksum: "9cee35621a15e4d968c64022e67de1eac35700eeb829e0f7e533c936cb4916e7"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260524195642.26371244606/UseSmileIDML.xcframework.zip",
            checksum: "a0353df08fe4405c58cce9e73ed47e83f97743e4beb4128d682b3a0cf2e5b5b3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260524195642.26371244606/UseSmileIDVisionFace.xcframework.zip",
            checksum: "27c395f19c148bee6e29e76fd4f49f98fce481af311293aa3dcfb371dd986033"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260524195642.26371244606/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "f006457e1a943dc4482ede33c394929c09cd9344dbee5cd0a9d3eb9f770316ad"
        ),
    ]
)
