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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713214756.29287663782/UseSmileID.xcframework.zip",
            checksum: "09fd95bc0ccd99d1783bec79d584a976387e94ca2b6a83398eeb93a4f9eb5428"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713214756.29287663782/UseSmileIDBridge.xcframework.zip",
            checksum: "a27f454d73e5b9fab695a259f7a45bffc7b25398d49a7927a60d0d38edf751ac"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713214756.29287663782/UseSmileIDVisionFace.xcframework.zip",
            checksum: "869ce9760e2969cfc08dbb0cd4beda477dba43969831c2e489bc8f8157164222"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713214756.29287663782/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "808ed5943f0654c7a6907657e7e6bd342219858d014298e7dccc846895e85f3c"
        ),
    ]
)
