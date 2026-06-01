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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601150212.26763172555/UseSmileID.xcframework.zip",
            checksum: "c353cb2e07ccfbbc959a4f286c6d6327901f0ee053cfe022284b416cabc6efb1"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601150212.26763172555/UseSmileIDBridge.xcframework.zip",
            checksum: "bdabdc7a32858a091ebb84108e9510d0942b266b6700e9b7b3a6014950a74f63"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601150212.26763172555/UseSmileIDVisionFace.xcframework.zip",
            checksum: "24fda3079ba64d5427b8edb467c7d76f47ce45ca88dd7df992c12bf2c5d493af"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601150212.26763172555/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "0dfa370eb9afec93bcda4478511f199bfc3d4cddf8293bad65629c5ea746009c"
        ),
    ]
)
