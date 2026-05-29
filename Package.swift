// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDML",
            targets: ["UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260529122645.26637145633/UseSmileID.xcframework.zip",
            checksum: "4a0cc13a23895f454a6b06b8c8d2b3174f6be2ea16dab02afa39a3806e24eb44"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260526083538.26441596566/UseSmileIDML.xcframework.zip",
            checksum: "5afdad4929a5406c2a00fdc1ff974e142bec0864453f969cbc6091b18e8e65d2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260529122645.26637145633/UseSmileIDVisionFace.xcframework.zip",
            checksum: "606aada65b04b4924806f6393b84e3df09b3318f4dd0022f889cee975864d3a9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260529122645.26637145633/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ce38b42a1d4817abb21d2b0b91ad6e346e7011088ebf77588d41e43d2e512035"
        ),
    ]
)
