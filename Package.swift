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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628111504.28320398760/UseSmileID.xcframework.zip",
            checksum: "79a95e650ce7dcf122be2f34d6614034c2341e1455c3e3940c943c7af971f7af"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628111504.28320398760/UseSmileIDBridge.xcframework.zip",
            checksum: "491f0ff2cedbb09e1ffe051e9df5c7638797210e417d19bd6302bff1b9c9d433"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628111504.28320398760/UseSmileIDVisionFace.xcframework.zip",
            checksum: "c99f6c294bf134c0111fe8d22c9501360ce5121349777488acc5bd62886d70f5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628111504.28320398760/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "da818ebf53f8bed1b2362d79ccfc1c2f39c6a0f701dcf2ce9c3ccdf6656f0f55"
        ),
    ]
)
