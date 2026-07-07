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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707161630.28881349130/UseSmileID.xcframework.zip",
            checksum: "56bf9896e21a493b1c436b4c9f2a5d47c51ac3846b4d77f0fc00a796ac776110"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707161630.28881349130/UseSmileIDBridge.xcframework.zip",
            checksum: "32216262a1df35001cdbcf5107c80bfa2ac4e190d7dd933bef5ea8dc6f2a959f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707161630.28881349130/UseSmileIDVisionFace.xcframework.zip",
            checksum: "1d0e3b012c841c26aeb179c8d953b54caef9896ccc14a9b6686bfb7a382e0884"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707161630.28881349130/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "5d48e98cda4621e43762168996f7a0ddbf8e8d139cbc8e710281b8bb3148ea10"
        ),
    ]
)
