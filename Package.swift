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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260708114448.28940027208/UseSmileID.xcframework.zip",
            checksum: "e516143ca01dded2a8d029e7fc4e9531cae34856cfa14d501e2f262499223d66"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260708114448.28940027208/UseSmileIDBridge.xcframework.zip",
            checksum: "fdb17e89fe63c9f2b45b6fcc3dbf4c1d4fec6c0d7889afc43adb9fcd1484bc1d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260708114448.28940027208/UseSmileIDVisionFace.xcframework.zip",
            checksum: "a7b83025ddcb8a5e8b203fef6d4522437b10a1e8350ee68b3b46b69a686e2721"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260708114448.28940027208/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "007cceb119488fc7356a764a3e21efb8ee1bbe5c4082cfe52f6178e0d89c926f"
        ),
    ]
)
