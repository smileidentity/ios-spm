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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0/UseSmileID.xcframework.zip",
            checksum: "0d6d75c79c193ce856b14917f83b984a5473547d5c91bd5bf8087eb98f6add77"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0/UseSmileIDBridge.xcframework.zip",
            checksum: "bd80127c6076d9f5a68218b97304273608cb4836a6fb7909d22cf9e5efb4fd71"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0/UseSmileIDVisionFace.xcframework.zip",
            checksum: "bdbb27535a97c00de3860e052fec25e6fc8323a9e11b53c9f746f2d9f0887cf7"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "90469f58f86c2d8d17899c2b7fc3b100a01ec16daa49984b040982940659a4cc"
        ),
    ]
)
