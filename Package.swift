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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605191558.27035092592/UseSmileID.xcframework.zip",
            checksum: "ca20a07d32e3786c4d8125866cf2ea061795508a27ea3a164de5caba8c0e6785"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605191558.27035092592/UseSmileIDBridge.xcframework.zip",
            checksum: "b1d2bca2bfd60c9c9bbbcd702b25c48e9545ec383f29bd8dcf16c7aaed1c414d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605191558.27035092592/UseSmileIDVisionFace.xcframework.zip",
            checksum: "a4458c1c588de840e56dc609bf814c0851025d2c5f3abfcf911e9b319c05f88e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605191558.27035092592/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "27585d969684f9aec61a0c1e1e54cb336d4cffe7269f57e6e29b06dc12821e85"
        ),
    ]
)
