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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701074206.28501753378/UseSmileID.xcframework.zip",
            checksum: "5aeae8a6be60e5f201d95883f6f98575ce7570e07d1eab385417ca2bc6a76f5d"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701074206.28501753378/UseSmileIDBridge.xcframework.zip",
            checksum: "58f817d51533e4685d5c0bbb3ab4bf6a7d6b4c2d1c974458d2cec0555e09070e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701074206.28501753378/UseSmileIDVisionFace.xcframework.zip",
            checksum: "08cbbb3e6cde17a6d256aac976b9d93da5f22b89a044b1b7ebbef29fee44a006"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701074206.28501753378/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "b631c2c38acf389b660431f86175375550f86d2924d6979df784d4a9b7915901"
        ),
    ]
)
