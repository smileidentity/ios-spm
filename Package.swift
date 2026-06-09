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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260609091302.27196091555/UseSmileID.xcframework.zip",
            checksum: "6e9f548d5e22ef74a968a563334525226ca2ebc83d7963f6743a96459a6e5a91"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260609091302.27196091555/UseSmileIDBridge.xcframework.zip",
            checksum: "34902f0ae8221c30f0c366442d1fbe8aeda71e44447fb9e61db8b47e80e070fe"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260609091302.27196091555/UseSmileIDVisionFace.xcframework.zip",
            checksum: "0dc07188b54f5101d557c11a0316a8b70f3723b25677d385cf7c84dd5a992b86"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260609091302.27196091555/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "bdca7936c569fa5d9f4e10b8ead05f5073ee9d548a6c5e76bc6e4f58c5f87b2c"
        ),
    ]
)
