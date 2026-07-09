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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709122018.29017778239/UseSmileID.xcframework.zip",
            checksum: "372480a5148c851298c1f637f5ff096bad0ff403c0041695e3637bbb8d1b44ff"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709122018.29017778239/UseSmileIDBridge.xcframework.zip",
            checksum: "7a0fc8e737eaee56490383ffac15a12fff352d9946f636e4fd6be80464ac743a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709122018.29017778239/UseSmileIDVisionFace.xcframework.zip",
            checksum: "4adfce28e0dd2d35bc4f72eefa24a3edfac4409e0ee2f202747631d009d2af0b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709122018.29017778239/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "9923ad31b82f8e102e79a5528415148de53926c3bd3150d1ce5220be407e85c3"
        ),
    ]
)
