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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260716204939.29533431987/UseSmileID.xcframework.zip",
            checksum: "d2672291b9538267370d44faa1f06eb829a037c804d95abf4853a064ecc83dc3"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260716204939.29533431987/UseSmileIDBridge.xcframework.zip",
            checksum: "5f4a60bcb7b22c3f401f9d6f6c7788c17b1ae543abbd55f2adea8d328609a1ab"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260716204939.29533431987/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d98ac0fd604d33904a8ed227fc38507b745409ed80b1654cd1f80b57f47f1ce5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260716204939.29533431987/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "9c7834c262be64af793fc0409f38cd861e41c881e4095b49a66420cc0a6ee84d"
        ),
    ]
)
