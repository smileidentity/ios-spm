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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713213124.29286646276/UseSmileID.xcframework.zip",
            checksum: "582659c001bea661efb6063cb1b2d8f0318f3abcc871328d906f75546ce12307"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713213124.29286646276/UseSmileIDBridge.xcframework.zip",
            checksum: "8c6294751081de96ce8138a4f52ee824d9cb353b23e7098b8655a4a7592ffe0a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713213124.29286646276/UseSmileIDVisionFace.xcframework.zip",
            checksum: "6c61e08a17dafe518331bcae5d5f35ebba656a8eaff0fb70685d77a3c29caeff"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713213124.29286646276/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "6f2da373e76739448b95701e5fe4c72b31f4a15d07fd11a64cb5aefd48dbcb9d"
        ),
    ]
)
