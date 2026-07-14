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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714140107.29338968316/UseSmileID.xcframework.zip",
            checksum: "d7a0d0d337e00e2e96ff36a040d893af3cf29e99d21bc0895e132b4a2b92177b"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714140107.29338968316/UseSmileIDBridge.xcframework.zip",
            checksum: "346462fc99d35cd721694066ed2503f0e68ecaf1e38b0d2e0e5f47b95fb99aa3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714140107.29338968316/UseSmileIDVisionFace.xcframework.zip",
            checksum: "fce5dcaeaacfc1732dc5ae8f2541e909a61cb0385037c1d59259fc4dd57973c4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714140107.29338968316/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "db8d14a14eb0f12cc6e9e62f9af5c33e31f37b31453a9efa72d7b991611bb2d3"
        ),
    ]
)
