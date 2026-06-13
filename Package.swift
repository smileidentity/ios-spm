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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613091540.27462644061/UseSmileID.xcframework.zip",
            checksum: "d227d9384a60be5436e248c1fd27896f9146b88364ee22820b006297227ea252"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613091540.27462644061/UseSmileIDBridge.xcframework.zip",
            checksum: "ad91721d541dc980c28037d2dfd710acbd1b72984d7ccd871d47fe3de9d88b27"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613091540.27462644061/UseSmileIDVisionFace.xcframework.zip",
            checksum: "04fe4aa7d2df63a844826a3beedf24fd8cde8c14601433b59daec44b8bea9c81"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613091540.27462644061/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "69b4da3f0f6718a9c559b08dc63312c01e4d9fff20dfb34d69c8cc544af8c0f7"
        ),
    ]
)
