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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630220424.28478838394/UseSmileID.xcframework.zip",
            checksum: "51de06ef763ccd4be29fc3e16aa8a71fd56cb73ea975c6742c22daf1a33f0e4f"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630220424.28478838394/UseSmileIDBridge.xcframework.zip",
            checksum: "e7f23626d5fb03ae259e6440ebe8742a7a31e37548f5d449d23cd28d51bc0b1c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630220424.28478838394/UseSmileIDVisionFace.xcframework.zip",
            checksum: "93f53f6d660ce099adcb669e8730f086cbfe04f9c31564c549da8e797775e969"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630220424.28478838394/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "79ff6f843d26f51508625881aa1a789b7e0892565846b63bef560f432ded069d"
        ),
    ]
)
