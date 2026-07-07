// swift-tools-version: 6.0
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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707123445.28866491682/UseSmileID.xcframework.zip",
            checksum: "0f0e8d3abffc5e9bd2dc9659c67fb0713ce22988dcbffa61af48df55b20434ed"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707123445.28866491682/UseSmileIDBridge.xcframework.zip",
            checksum: "59f54523f83317ed159d4f08e365cbf4b1eb9efe4a6c8945c49c87fbf695feed"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707123445.28866491682/UseSmileIDVisionFace.xcframework.zip",
            checksum: "57c18516943e26a817d5ddc8627667108573ba9ee3d64dab38362412a1ffeb04"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707123445.28866491682/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "e220162ccf868fc9d07386fbc5613e0af3798cc0e56b15f2f47bf493fce83a43"
        ),
    ]
)
