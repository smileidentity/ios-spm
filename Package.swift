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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714173737.29354549065/UseSmileID.xcframework.zip",
            checksum: "213a7563dd9d7b553592bc001274096353d0ea264e0a2c9c8dd8fd50e24d8169"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714173737.29354549065/UseSmileIDBridge.xcframework.zip",
            checksum: "be1f0769a9faa5f0b17f38bb74cae2c096a870f7f7aeea4303e4180dfc7ffc9a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714173737.29354549065/UseSmileIDVisionFace.xcframework.zip",
            checksum: "b3d1ff703a049c341997d174548759bd73e1d545ef685694ad9cbdf254d680a1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714173737.29354549065/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d361a9216559dc97abfc5093391b4456f5bfc050948061c6283a902515aa5687"
        ),
    ]
)
