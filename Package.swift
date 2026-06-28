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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628153502.28327184902/UseSmileID.xcframework.zip",
            checksum: "c505dd92ee54a16d4ab6db5e9adfb87c75a73db5034f4a932a6088a7d0a69b85"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628153502.28327184902/UseSmileIDBridge.xcframework.zip",
            checksum: "c7cde9422f84761eec5d3cc50bb026de172a0cd84aecabf6fb0c481c69f5bd49"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628153502.28327184902/UseSmileIDVisionFace.xcframework.zip",
            checksum: "1c402fbecbb9767e63789560e2bbf7bc45a33a23e234b7d50b90c17fc6667213"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628153502.28327184902/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "79a3548d06e0e173143f959aaad1634df5c4fbf1b179c168a688e6e0bfd22c24"
        ),
    ]
)
