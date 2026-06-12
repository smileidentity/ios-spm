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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612160707.27427667252/UseSmileID.xcframework.zip",
            checksum: "52881b96a68977b01d31f7843dc29d614adea7d81e7b33d2cf939b0d0be5a2ce"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612160707.27427667252/UseSmileIDBridge.xcframework.zip",
            checksum: "8c07fdf5e37808ef924bc61c051ec03c54d2e499e1ce1069e44f524ee1ed768d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612160707.27427667252/UseSmileIDVisionFace.xcframework.zip",
            checksum: "8673731bfc7330abb1c7536b226012c62ab7c67e9629fc8b46c0229532151d32"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612160707.27427667252/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d706595920c322a92b9c1a89d883ad23c86ed2d5d938e04a8363333aad29b475"
        ),
    ]
)
