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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260720233835.29787679710/UseSmileID.xcframework.zip",
            checksum: "c1ed3acf4ce0d5a9f8b82279a485ce5a828a44c8e8425cd4bd6d2bfcb462627e"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260720233835.29787679710/UseSmileIDBridge.xcframework.zip",
            checksum: "fcb01469c068b92ed2b05b0d746d879547774d8d8aa7af62761039777bafd055"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260720233835.29787679710/UseSmileIDVisionFace.xcframework.zip",
            checksum: "10a8a02f92cd3d6a608145f3d78af82610b026534e151925cd05d5650782d23a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260720233835.29787679710/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "fa4e364a4e60028d5dbccc29ba2b82895671ecd58525a92bded229169614067e"
        ),
    ]
)
