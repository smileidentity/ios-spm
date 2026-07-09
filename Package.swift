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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709114334.29015777313/UseSmileID.xcframework.zip",
            checksum: "af22f437e5dbb5e0cbb71d3f25235bb4e9432310d67435ab21a912ebf602b7eb"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709114334.29015777313/UseSmileIDBridge.xcframework.zip",
            checksum: "b803aedcf905ad0738d2b4cd24bd3bda9ee289e8f142341c4ec34784d1336bc4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709114334.29015777313/UseSmileIDVisionFace.xcframework.zip",
            checksum: "85dfcb516304730fc3f428f841203560cca266f18603b74d5808867775570175"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709114334.29015777313/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "a75df11272cdc1b0f03ff50b148593e42a4935d42b9f5de36c819681a3234ba7"
        ),
    ]
)
