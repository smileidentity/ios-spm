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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612171111.27431039231/UseSmileID.xcframework.zip",
            checksum: "da16a003565dd62985dc114999c9b24cf3b8099956801a6572504a6b3c31d60e"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612171111.27431039231/UseSmileIDBridge.xcframework.zip",
            checksum: "d3087380569c134ce8f0f98af89bee87635b0892ae13c8483761ea3a20067c6e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612171111.27431039231/UseSmileIDVisionFace.xcframework.zip",
            checksum: "3a232ea7ade091c881edc9785926f3cacc7dfaf5e0601c09fcf5ffb33a8fc8a1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612171111.27431039231/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "3dbf1be79a89a2200063abdb42a2d7c1fbb2b6c83d10a7887adf644407e7d869"
        ),
    ]
)
