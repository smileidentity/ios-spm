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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630223140.28480104415/UseSmileID.xcframework.zip",
            checksum: "25a7510616ce6098a8056b6da1b82263f0036adf2b8df7ac5aa72b45c29be2e3"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630223140.28480104415/UseSmileIDBridge.xcframework.zip",
            checksum: "33769748bfcfe9c8adfda20b116c56fe519194241541c950781addcd815afb19"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630223140.28480104415/UseSmileIDVisionFace.xcframework.zip",
            checksum: "71c02d177ab41ddca1118eb6f48129dbf6c41af5f2df07cd91aa5ba12e67bee7"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630223140.28480104415/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "7f464b325c63d845ac37d2eccecfae98baf76c8a46c752bfcf33781abd68c5e5"
        ),
    ]
)
