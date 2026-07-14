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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714141205.29339776204/UseSmileID.xcframework.zip",
            checksum: "961fd5f56e7019402be9b55102effa8f83eb62c7b9d10abf76660362f79ea65e"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714141205.29339776204/UseSmileIDBridge.xcframework.zip",
            checksum: "5ca947a188d345d74a0eaea9eb261f29d92f345f1565386317ea2b0a258af722"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714141205.29339776204/UseSmileIDVisionFace.xcframework.zip",
            checksum: "f8885a0c48062dbef8d7f36120c4fe0e3dd520f958b4abae8ae81db3316cda1e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714141205.29339776204/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "3deafd899f288543c02dc5f858704f56851fc11711f3139ce1deb439fbf6bc50"
        ),
    ]
)
