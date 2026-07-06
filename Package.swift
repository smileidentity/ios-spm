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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706124353.28792383386/UseSmileID.xcframework.zip",
            checksum: "026b92a398f3c14ffe2a16ca8697e1698dc368f3b60feee3a6f3a142e7003ec5"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706124353.28792383386/UseSmileIDBridge.xcframework.zip",
            checksum: "c78086a849c92c647b3a4efe76ac7ad17bfbd7d99a67ddeb58bf6a0b983cd536"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706124353.28792383386/UseSmileIDVisionFace.xcframework.zip",
            checksum: "376f0bca201a47f866d3a069a4cc7fb2d104e74a37c9ce9c326b88ce77a8ee5a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706124353.28792383386/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "b5de2e9ed82a165c9a3315b2d4cefc44a758e99f94bc8f442062ac152b2303b2"
        ),
    ]
)
