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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730105536.30536310943/UseSmileID.xcframework.zip",
            checksum: "104c738889ad212c32c878a851c3d91c26b16d0a803043604f8bc2e3618cdbde"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730105536.30536310943/UseSmileIDBridge.xcframework.zip",
            checksum: "e7b4814791d4f5d504ddac0693a440038f472e509f29624398aec0af8d9edfef"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730105536.30536310943/UseSmileIDVisionFace.xcframework.zip",
            checksum: "53c85de1889954113c661965ff539c5c2d2bfddbc142331cf3daa7d831536ed0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730105536.30536310943/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2aa0c885759400c8c48d41f18df3af5ee64f992fd3e7a7a54709a5668248470b"
        ),
    ]
)
