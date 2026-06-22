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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01/UseSmileID.xcframework.zip",
            checksum: "8b83ab6c8ff037f267956daa6d74354c6bf43818245c82959ae65056565b0ea8"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01/UseSmileIDBridge.xcframework.zip",
            checksum: "0785e36df42a88a35dad87b38fa07cd653d6a1451fc3f8928beebb7684838d99"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01/UseSmileIDVisionFace.xcframework.zip",
            checksum: "97d7771b52a65ebf869a2eb0753e6f8e72664ac00e0fe58ce2e341ccbb2c4125"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "49ce055e792c2201af2c36a7c310cf585dfd9a4b2595ebbf336d90b8bf7d246f"
        ),
    ]
)
