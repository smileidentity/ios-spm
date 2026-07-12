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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712093631.29187753499/UseSmileID.xcframework.zip",
            checksum: "619277f013a30eda683a2dc8ac264d27708d4130675e5a59804fa562c2723198"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712093631.29187753499/UseSmileIDBridge.xcframework.zip",
            checksum: "fec267df02c5855acf376ce627bf86c769db50e13490380d5a1f3d18f4d1a93c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712093631.29187753499/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d5aea7d5dc3a4b04b44874fe77ac0c6c797f29ccaed71dada9e90bfa4225e0f2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712093631.29187753499/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "3db086b70816220a50949f4305f438a5b17997612f99846db191c19122cb9005"
        ),
    ]
)
