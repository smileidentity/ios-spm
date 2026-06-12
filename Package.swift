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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612105336.27411219000/UseSmileID.xcframework.zip",
            checksum: "7fdcd4f29b3bf4cf5813c163262208874f142ee909e93f8330ba223cff4dab3b"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612105336.27411219000/UseSmileIDBridge.xcframework.zip",
            checksum: "259e78b2983ca8e8aae4576c103aec80a13c341e07fa24f1a638c3c7699f0253"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612105336.27411219000/UseSmileIDVisionFace.xcframework.zip",
            checksum: "42d43f4e25aaeda1f12a2ec43cf70f15349faceebeb097667573401691142fdc"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612105336.27411219000/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "b7e59e925956ac0c9c5bb808eb54cbe1cc9f7d1fbe1b9192ca6e3444c00a6594"
        ),
    ]
)
