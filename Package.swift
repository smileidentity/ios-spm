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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613131047.27467715755/UseSmileID.xcframework.zip",
            checksum: "fd854f8318ba812048532c8d9818c7d2f0715be35fbfd89e65c8dbde60e51117"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613131047.27467715755/UseSmileIDBridge.xcframework.zip",
            checksum: "cce726596c0ef655703dc3e4ae9fd34091de144e7f4e3009bf72310d0607b6a0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613131047.27467715755/UseSmileIDVisionFace.xcframework.zip",
            checksum: "35c6c3fd130bf572eb30f6519ec231eed89d4b577dffdec892ff5c4de070f19d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613131047.27467715755/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "1181eac0c29c7c595e6f4ea2210f4a99bf02cb22e377a40f5f6069a6734c75f4"
        ),
    ]
)
