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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625033449.28145064827/UseSmileID.xcframework.zip",
            checksum: "3fcb3703502f5fb4b1869f44a1a4a6dae346e14d8fadef5fc394758b084e383b"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625033449.28145064827/UseSmileIDBridge.xcframework.zip",
            checksum: "027069c9f1c2805aad841b31c3eb07d6da93d06c12ad958520ee9388a114ecd9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625033449.28145064827/UseSmileIDVisionFace.xcframework.zip",
            checksum: "ec8196312873268b37844dc92b8a1622444f92282a6ca4be0ba76bf8137432d4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625033449.28145064827/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "cd12842c14870bf7a3dbf0f82ada381357de963fd361a8d8f3a1dd806928b06a"
        ),
    ]
)
