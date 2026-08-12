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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812133532.31601784574/UseSmileID.xcframework.zip",
            checksum: "71e237387ba86ce761faf2dd8622a4e90e777af30644e3991da94673888900b1"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812133532.31601784574/UseSmileIDBridge.xcframework.zip",
            checksum: "24b0f8b3d6f634b7fa975689ac66b29139e429340431b2e4cb46520f4a4d2d4e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812133532.31601784574/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e1df97eef6b564c0a34d04ac5e2cc986e4594d348ea5d0860d986c7bb9723abb"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812133532.31601784574/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "5671d116d6f3f1df42c6bb34f0f4b6645ae5c316858d977c352cceb84906f8a8"
        ),
    ]
)
