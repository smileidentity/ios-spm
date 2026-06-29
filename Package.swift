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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629163140.28387353795/UseSmileID.xcframework.zip",
            checksum: "85b357357acacce07c2de4a3f87743c3280ca81fa29b64da03596c8d80a173ce"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629163140.28387353795/UseSmileIDBridge.xcframework.zip",
            checksum: "f8ddf00920ddbbeafe14ab5d0c0b361024ce8949ad4a782da239d4041c310844"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629163140.28387353795/UseSmileIDVisionFace.xcframework.zip",
            checksum: "f6fc628cd188424add7ab65c0838985f15de8b1d0208b6a776b4b2234d4e76e3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629163140.28387353795/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "f2b5df3848bdcc2eaec74106587690f73b7788b6776e9a7cd571d4ebecaa3eef"
        ),
    ]
)
