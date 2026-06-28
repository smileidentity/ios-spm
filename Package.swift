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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628205031.28335578215/UseSmileID.xcframework.zip",
            checksum: "62c7691b83bcd4fbbcf4c2a413210cf290e75eb3f85ca3f86847302adc0c875a"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628205031.28335578215/UseSmileIDBridge.xcframework.zip",
            checksum: "701df758ab727746e0e4df937437b3385b6a00700bd9e466f71e3c326efe9cb0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628205031.28335578215/UseSmileIDVisionFace.xcframework.zip",
            checksum: "cbbb90273558962a44c6d4db1f9854d66854fa345215ca11643c24cc6ecb714a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628205031.28335578215/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "a0d1ce949592ff6d89ea08f6af81c0e3e22d183bd1dc3a47492d867997cf6dd3"
        ),
    ]
)
