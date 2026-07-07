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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707113329.28862985107/UseSmileID.xcframework.zip",
            checksum: "16d1f86e98a72a00a51c4fc9350e7f3312c0703f6df1b3e3c0beaaa6a1e12987"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707113329.28862985107/UseSmileIDBridge.xcframework.zip",
            checksum: "e854916bbd14fe6bb3b1db99daa9fb1cbc99a5badf93f851f13cb587c0f82d86"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707113329.28862985107/UseSmileIDVisionFace.xcframework.zip",
            checksum: "27f86c8abb43ce043e89b955f85e06e0c2cd5d105a2fbc5cde4c44c8a01ec9e3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707113329.28862985107/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "e4fe4cc8e7a154f1f644e9b2b101033428eeb486e9794c7195821a56028dd1f3"
        ),
    ]
)
