// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDML",
            targets: ["UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424155013.24898593517/UseSmileID.xcframework.zip",
            checksum: "e8561e32a03dc4e822c7554cc5b811c122842791ce55ee51df6b30d5284aa1bd"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424155013.24898593517/UseSmileIDML.xcframework.zip",
            checksum: "6994862b979ba6235e50b30229695904144d887c36014d2ddfb6fd27a11ccd7d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424155013.24898593517/UseSmileIDVisionFace.xcframework.zip",
            checksum: "a7255662dd89ab9a6c516a564f7650f6fe074c027b3ca68caebd63e4c602f2eb"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424155013.24898593517/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "fe789abd90fcd6e08cc96b2c3089caed27de630ebfa2567dfdee3dc801af3e91"
        ),
    ]
)
