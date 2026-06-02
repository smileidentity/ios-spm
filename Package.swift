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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602192215.26842686570/UseSmileID.xcframework.zip",
            checksum: "51dc75ef1efd80fed88a94986e08af641bc9ee9cc82827ae6d64e9afb2a7a269"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602192215.26842686570/UseSmileIDBridge.xcframework.zip",
            checksum: "12470d87009b97075bca68fbef0a070748e3c5142771d0d5a93f0281fac9a647"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602192215.26842686570/UseSmileIDVisionFace.xcframework.zip",
            checksum: "cc7fc9b9722bf33e1f8893129b757bf5dd7f6c9c351e83ecfb55c8d143f31ffa"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602192215.26842686570/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "355d5405b7278f0ea455eb12bb25355a18422df1c175fbbb5ed96c475ef1e462"
        ),
    ]
)
