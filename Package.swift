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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260702160537.28604231514/UseSmileID.xcframework.zip",
            checksum: "216617cd7b7ddb7575a4243fc9f7b56953270cf234399f6de42ac9b2bf346d43"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260702160537.28604231514/UseSmileIDBridge.xcframework.zip",
            checksum: "c5f06e99e0298e6ac38a34b5e0a3b6d3d268f9ae32fb34fe8d0424b3916bcd0e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260702160537.28604231514/UseSmileIDVisionFace.xcframework.zip",
            checksum: "22f7172510f5eaccc45b42472d497ac18d7da4f319b9c08e449af5f2b3813b5e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260702160537.28604231514/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2cae2b8a8486dad94ef10d82f98243a7eb9790c80f0d52b10f2d6d80b3043121"
        ),
    ]
)
