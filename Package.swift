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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605150244.27022637111/UseSmileID.xcframework.zip",
            checksum: "b1365bcb4f2798fb9008f3c4511f903b4bbb93fcf7438d95d0ab34e1895039ac"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605150244.27022637111/UseSmileIDBridge.xcframework.zip",
            checksum: "b39ed1f573852c88122f106818da66e3af385e65e1ddf06588ca61dfdd27b5c8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605150244.27022637111/UseSmileIDVisionFace.xcframework.zip",
            checksum: "65cff2bda06757ec0dd1fe663b7460907c1eb82e1fde3d3f695750f49a0fba39"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605150244.27022637111/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "42d25f7dfff43d178e2a60ace1f6ffca0c6301da1123d30ba6fdb64a5f43ef8a"
        ),
    ]
)
