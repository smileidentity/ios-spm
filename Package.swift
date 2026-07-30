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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730115136.30539955293/UseSmileID.xcframework.zip",
            checksum: "f88297504c198b2728828af153d0f6ad7bd1fe85654c3b4d6e477563d2d33437"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730115136.30539955293/UseSmileIDBridge.xcframework.zip",
            checksum: "9e863f572974978c083c6bfa13b399e9f09625d524e5f5b800a83da2e46bc694"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730115136.30539955293/UseSmileIDVisionFace.xcframework.zip",
            checksum: "3aff402547cb666b6096c907f64e36e4039d65c7c8b91babd0accfcd75a28e57"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730115136.30539955293/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2245be9467744d3f02a0deaf7e9d60be82bbefe9da04df77ea6d7e9708d7d49e"
        ),
    ]
)
