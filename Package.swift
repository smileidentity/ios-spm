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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730103233.30534817774/UseSmileID.xcframework.zip",
            checksum: "56b8f9032d0747196b7ab3e606b44b09924190b6ae79fc83cd5aee3fbb658a9e"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730103233.30534817774/UseSmileIDBridge.xcframework.zip",
            checksum: "09e06afd46bbb493d96d58f670925fec18d4b8b85a2edfdfff4b4c4e46e28b02"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730103233.30534817774/UseSmileIDVisionFace.xcframework.zip",
            checksum: "2f3570fed5da85f332d7aff88e72891b9eb7df5ff07da9cb1bab59e9351850fa"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730103233.30534817774/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "9683f85dc5bab3111916d7453a636e83d82430a5ff53e195e57816f03bf5ef00"
        ),
    ]
)
