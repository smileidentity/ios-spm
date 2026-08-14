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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.2-SNAPSHOT.20260814181752.31827565611/UseSmileID.xcframework.zip",
            checksum: "bda69a216363c5fc051c0ad7206ae620587dbf856722826ece99795f3b00a2f1"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.2-SNAPSHOT.20260814181752.31827565611/UseSmileIDBridge.xcframework.zip",
            checksum: "ccf4554b740087ef0db5cfcfb32d6a4ccbca7387cd19febfcf9bd197acd4694f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.2-SNAPSHOT.20260814181752.31827565611/UseSmileIDVisionFace.xcframework.zip",
            checksum: "f0baaeed5e7a8828067e24596fcbe0321c515b71458c291da37627f913f9dafd"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.2-SNAPSHOT.20260814181752.31827565611/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "0f86dc6b2a71d97295e0f845eea726f13dc82cb2d6b3cd6ab16e2c4ab502de55"
        ),
    ]
)
