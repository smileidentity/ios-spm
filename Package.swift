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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260729110623.30445969876/UseSmileID.xcframework.zip",
            checksum: "9102259e07f9aed441b0948eb6af9abe432e56ed95a52e69a0657b749d0b8803"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260729110623.30445969876/UseSmileIDBridge.xcframework.zip",
            checksum: "0e96dc0c321b67ef3f14252875c41627e6742c4e0b34d4a88747175a7143918f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260729110623.30445969876/UseSmileIDVisionFace.xcframework.zip",
            checksum: "fa61be03c3eb7ceaececfc79bf34de316f23f15472b9efef7abb7c2225e3ecc4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260729110623.30445969876/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "6a24b8ff3d0414e3863baca75e55ae4fc25ece3b1e2c4173698ce36dc823632f"
        ),
    ]
)
