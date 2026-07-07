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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707125746.28867904564/UseSmileID.xcframework.zip",
            checksum: "67a852cdc0571375a545425374ccc5ffeecaf79d632abc117d5631feff4ac8f1"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707125746.28867904564/UseSmileIDBridge.xcframework.zip",
            checksum: "1a34ae8b3f93d531167cbe7e77b767da4541439dbf7f7d94ca1c1e78dc3e37bb"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707125746.28867904564/UseSmileIDVisionFace.xcframework.zip",
            checksum: "277a61724634970d6810e815a4480569cbc9e74bdfded695edf15b2ae24a052e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707125746.28867904564/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "5f6d2da046cad8333a04896267ab2c3e935512fbe8085d19088db21e52806cda"
        ),
    ]
)
