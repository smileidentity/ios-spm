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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812112418.31591355732/UseSmileID.xcframework.zip",
            checksum: "75059d0e4e5916a4c06c58555cb28b7a88684d389d9060bc0c040bc179e10dc7"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812112418.31591355732/UseSmileIDBridge.xcframework.zip",
            checksum: "ee889fdfe24e21f6006858bb6a38faf9e229db768fc55a9bed721eb9359dfe58"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812112418.31591355732/UseSmileIDVisionFace.xcframework.zip",
            checksum: "0a077fe114dca9fa1f7bec40f8cbdd28e1c480ea9d0f6becd815c96d6368157d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812112418.31591355732/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "92d772853cd569c0fc5946875e8ef8628f7d325bf02a5b856f95e9d705b34245"
        ),
    ]
)
