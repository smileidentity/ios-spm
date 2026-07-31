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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731115859.30628678805/UseSmileID.xcframework.zip",
            checksum: "1e59af53724c31ed17594f444f4975cfc107c991ef4825ee3e1e9d0da986c302"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731115859.30628678805/UseSmileIDBridge.xcframework.zip",
            checksum: "abce5431dd90c5f3a74b9aaf4003d9cf330a9549d836cbe61063be07606277dd"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731115859.30628678805/UseSmileIDVisionFace.xcframework.zip",
            checksum: "ba5f0183dc69bca039116d1421b3448d8b2a3e60a6af8afc4b87bec9e194a136"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731115859.30628678805/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "f90d0b334403dff7504c34659256ab55590bcfee425133db85f71189dd5df59c"
        ),
    ]
)
