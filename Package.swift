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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260702105806.28584863877/UseSmileID.xcframework.zip",
            checksum: "9324b53f32d6d473272532ccbdb0acf9f39977768fecf9739a60533c6974b5ad"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260702105806.28584863877/UseSmileIDBridge.xcframework.zip",
            checksum: "77a81dcf1adfadce9a9d61b14f8d0d6251dfb2cf1699d949ecd68b40ac2156f3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260702105806.28584863877/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e09b746aefb07b5e8a31f4e287f417c713149911efbd9566a1686be353c6cf15"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260702105806.28584863877/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "781b730763b12256d97e1e0dee3d5dae00ad0378425c096101b83bc3c8dcd0d8"
        ),
    ]
)
