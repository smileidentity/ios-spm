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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605191242.27034936334/UseSmileID.xcframework.zip",
            checksum: "63310a4eed21104e6397dc5365d42918a4698a505f79770e96017d32a2bd13d1"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605191242.27034936334/UseSmileIDBridge.xcframework.zip",
            checksum: "2342d151c85d52831f684bf5d0d29da6d0afa6da08c892526e2e17a2ed371f86"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605191242.27034936334/UseSmileIDVisionFace.xcframework.zip",
            checksum: "58da9147611bb1e933ebe8fe7e3b2f6fdd367421bccd03a53a300d51f998c20f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605191242.27034936334/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "fdb27d00be53b092cf9d397e62ecefbb6df9bc4064cc53568167c1728c8f2ed3"
        ),
    ]
)
