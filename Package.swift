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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713213557.29286795169/UseSmileID.xcframework.zip",
            checksum: "6466d8bf3397f5250470a6ebdc973d5f541b6ac1051f3d688aeb78bed125c5c7"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713213557.29286795169/UseSmileIDBridge.xcframework.zip",
            checksum: "cddf956022f6bdace8d0e3ac9516c23bc45ad79a47a9844a8bff75c05f1fbc6e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713213557.29286795169/UseSmileIDVisionFace.xcframework.zip",
            checksum: "3b9378bdd938e7579617ce4cfb03fbaa069261c071c49dc36f874e832e1fe55c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713213557.29286795169/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "1459c531cdc653481ca2fea6e4e75275c1a253f2aff0f1d6ca3f7ae7f0c9abcc"
        ),
    ]
)
