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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603122839.26884727163/UseSmileID.xcframework.zip",
            checksum: "bab19aba5a522fd65b54462479ff43d5df89748d6acf1bf11f5487a89523e170"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603122839.26884727163/UseSmileIDBridge.xcframework.zip",
            checksum: "c56bd098ff24a174ee4c5d660f26e99a55ad257c58fc50959e86efca7d923902"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603122839.26884727163/UseSmileIDVisionFace.xcframework.zip",
            checksum: "dee6b53b30fee4c4b10d439dcb33a138b1a488358b7f9b5ccea043e3570f4c85"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603122839.26884727163/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "dc55b7a9230acfbb48e80a31c9a25b85e9e9c47fdd609e7a77faae12140d23cb"
        ),
    ]
)
