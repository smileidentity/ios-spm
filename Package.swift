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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731151238.30641580139/UseSmileID.xcframework.zip",
            checksum: "a7155af02d08d44c6e8bf7c81a82d0e69eed5b1deceb449a910858ecfe4d18c2"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731151238.30641580139/UseSmileIDBridge.xcframework.zip",
            checksum: "a3995ed79c807dde2317a888d4464ac78790ed65e7cfe81c7750a2b79fe45469"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731151238.30641580139/UseSmileIDVisionFace.xcframework.zip",
            checksum: "18b88b1a61cc3995edf427f9d9a357ec2736104ce6d24612bae1fc27261c65b4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731151238.30641580139/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "08bca25f6133954ddc5d18abd580e768d37fe9bff790a7176f237822c945498d"
        ),
    ]
)
