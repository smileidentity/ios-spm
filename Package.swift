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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260609100123.27198651076/UseSmileID.xcframework.zip",
            checksum: "0ec96a1020e4022d35894a31658663b7fb21ca347259861b30165ebc4aead6b8"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260609100123.27198651076/UseSmileIDBridge.xcframework.zip",
            checksum: "e80fada4d368c67eeea49a96bad7471655770fc2b59fe3ac4ed5751e215e5541"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260609100123.27198651076/UseSmileIDVisionFace.xcframework.zip",
            checksum: "69b565d6e61b82e1d5b7459741b3495a8c2da7986684d91d6826582b8a7c61a1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260609100123.27198651076/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "267fa88e9367545eb101699c482e439b9f6d14831309985dea03f5330e396fec"
        ),
    ]
)
