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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728130343.30361474156/UseSmileID.xcframework.zip",
            checksum: "5914fdb5aa272881b7c067f1564c5bf109b3debf424579cb4057a3bc8bb9d058"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728130343.30361474156/UseSmileIDBridge.xcframework.zip",
            checksum: "e1279028b304f8f35458fffa34a796293dbc74b2d01c122a66ebb5135aa65e93"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728130343.30361474156/UseSmileIDVisionFace.xcframework.zip",
            checksum: "8d83d2a8efd10d2948dbbc436727755e14d841a6afef7038c072a65009e1c0ef"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728130343.30361474156/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "cc742f2c2ebd6e55371c2914f5e76e321ff3ddd1619b3411e3ca5bf05c25cda4"
        ),
    ]
)
