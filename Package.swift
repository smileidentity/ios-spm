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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604104006.26946697721/UseSmileID.xcframework.zip",
            checksum: "df899bc898a297341a7677fd4a40609dfdc422a67f839c177106724e90cf6266"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604104006.26946697721/UseSmileIDBridge.xcframework.zip",
            checksum: "9c7eaa01bf0cfe2228035acbe2230927115970edf3385ea9d16d529aab404fb2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604104006.26946697721/UseSmileIDVisionFace.xcframework.zip",
            checksum: "9999abc00c1e30d7084ef0bf23559d14398953e0a7c001d3195cadc6ee3a0db4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604104006.26946697721/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ad23bb7b33629db9703e3d77dc60a03e923cba6d511e61889c2f095e5cf8d8f4"
        ),
    ]
)
