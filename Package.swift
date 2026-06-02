// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDBridge"]
        ),
        .library(
            name: "UseSmileIDBridge",
            targets: ["UseSmileIDBridge"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace", "UseSmileIDBridge"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument", "UseSmileIDBridge"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602160239.26832069500/UseSmileID.xcframework.zip",
            checksum: "f408d3fbe2e4efb4a50f2b7db926c1acc7808d7dc575f0724ad06168c09174cd"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602160239.26832069500/UseSmileIDBridge.xcframework.zip",
            checksum: "5a6ddb86cfcc2ee29b933a355931fafead2aab2eb1c1accf87702307aefc1624"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602160239.26832069500/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d688527a38fdb4b2d446f72a04075e28b3de62a8de8c8b6a9e3990fe17a90e8e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602160239.26832069500/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "85a89ed74959daab05553fe73a762b4d56946186ade871a4064a1ff0313f35ee"
        ),
    ]
)
