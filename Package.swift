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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713211655.29285732242/UseSmileID.xcframework.zip",
            checksum: "a8ffc8557f5b597512339d6fac40fc21b9aa32527ce5f1195d58148ba2fedcdc"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713211655.29285732242/UseSmileIDBridge.xcframework.zip",
            checksum: "05413ecf67c37a10e2476dda8ed10e22178830111a5f331ee8bd07d6ee5d0093"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713211655.29285732242/UseSmileIDVisionFace.xcframework.zip",
            checksum: "b1dc16f2a260111de4e516c2055d75e09f5255092406dd0dd342c741c37b01f9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713211655.29285732242/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d54a6af82fc7808fbc853dde8f71b9df7155561692c3afca34a521426830cbe0"
        ),
    ]
)
