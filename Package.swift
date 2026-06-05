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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605144658.27021771175/UseSmileID.xcframework.zip",
            checksum: "561a154fd32791fb27c5a4710814ffffa49413a96fee8d5bda710965eefb294a"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605144658.27021771175/UseSmileIDBridge.xcframework.zip",
            checksum: "79f1412ea86dd1c1f6c5af0bf982cb7d4c54bf446e5a7586e3f81594c481359d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605144658.27021771175/UseSmileIDVisionFace.xcframework.zip",
            checksum: "3392f79e88d47a32d6ec59e820374be70f995f02c007370377edce64dee2a5e3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605144658.27021771175/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "72c2830ff002605efb30e889e115bd0c2ffd6d89f93a74d8a74bb9f67aa172de"
        ),
    ]
)
