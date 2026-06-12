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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612114447.27411311935/UseSmileID.xcframework.zip",
            checksum: "084073dcac238f44c04c09d35c7e6bfa133167b4093f8a47673402e0f27eb554"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612114447.27411311935/UseSmileIDBridge.xcframework.zip",
            checksum: "2acc42e84ac23c456f9a80595466dfaa53f1f6de0ea685202df5df6612dba169"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612114447.27411311935/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e09a9bf785d9971be9e10cf3a9f099d33afdb20ff4b2c7b2851b2aeed7290b41"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612114447.27411311935/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "a515961562d18a2bc6e0caabdaf5522e4a75633034b2fc3ecce141cbb1e1c0b4"
        ),
    ]
)
