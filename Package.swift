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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1/UseSmileID.xcframework.zip",
            checksum: "62041bb23048aea7586492a14cc15447922cabe6ca96c5a6a19e15527dfb87fb"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1/UseSmileIDBridge.xcframework.zip",
            checksum: "cca10b573a4428fcacb42f6bb8895e92efa94d092394f4f72b9bd85f3dd596d7"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1/UseSmileIDVisionFace.xcframework.zip",
            checksum: "eb079bf5c7e070c53af31eec14042975d3982776c7d83e8f70148be1c3e47569"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "3983a13a3d8349128a26b6f15a6d4cb5a0d91d9d5d988a13b041e5f32e3b39ad"
        ),
    ]
)
