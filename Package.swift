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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260805145450.31016934788/UseSmileID.xcframework.zip",
            checksum: "60a933ff163816b6522b6a02b28588df5cdfefffc92349cee74f151950ec6f0c"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260805145450.31016934788/UseSmileIDBridge.xcframework.zip",
            checksum: "d135ddb7d8380b90c13702a32ddead0721161d8cd148f1016d31e7c54fedb463"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260805145450.31016934788/UseSmileIDVisionFace.xcframework.zip",
            checksum: "46fbced733f41142a9fe81192d4ac6996bd7f6dbb07a9e683cd780a36aa2b585"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260805145450.31016934788/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2bbe3fbdc019ed91e9e17e676fbbd41efb1b8006155f09c1514557d0be3a90be"
        ),
    ]
)
