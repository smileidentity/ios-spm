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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260810204901.31430517041/UseSmileID.xcframework.zip",
            checksum: "21123f06f4b716b560bdd85d7d8aa7e43efc01a19f8655b4cb9f903fcf449172"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260810204901.31430517041/UseSmileIDBridge.xcframework.zip",
            checksum: "e45ce39be30a7f41f3b1043d578f4299dde4526001e202a17044bb44a3f68d5f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260810204901.31430517041/UseSmileIDVisionFace.xcframework.zip",
            checksum: "f4a2a77d546f23aabf5b2766ce45c03f0a213c28c1b4c510136c6fa5223d61c4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260810204901.31430517041/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "67241e8e949ce0e65d59d17b1badcb6501cc166a9956fa97a7c204e12502ca52"
        ),
    ]
)
