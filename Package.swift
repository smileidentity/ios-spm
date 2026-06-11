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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260611064832.27329210835/UseSmileID.xcframework.zip",
            checksum: "b74a09232667b0b87b97b0e0275770c4b23fa88f5c13e651df2b85aa82fc27b8"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260611064832.27329210835/UseSmileIDBridge.xcframework.zip",
            checksum: "d3415fd4c58a1955c7ba06dcec20cc9e57bcc0747d73464ba1663f9b6ea8f0ec"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260611064832.27329210835/UseSmileIDVisionFace.xcframework.zip",
            checksum: "c9acf6239688161eaa817f61870c20705a886fd55d9092b493a8eb20e7c546fd"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260611064832.27329210835/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "81c4b8c600f05e67b07a9b08da7970637bf2fdbdb6e41941d00526cf1e40c872"
        ),
    ]
)
