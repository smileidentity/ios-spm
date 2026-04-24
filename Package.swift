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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424131835.24891602591/UseSmileID.xcframework.zip",
            checksum: "92c9ba540de20f10ade0be60b50be8ef64dcd37b0a39f92565338c3ac183f8e6"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424131835.24891602591/UseSmileIDML.xcframework.zip",
            checksum: "14ecd8522a8d20f73c19cab8b5e0fb6ab5b9de42c4ae0aac4f062e2e8587c8c4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424131835.24891602591/UseSmileIDVisionFace.xcframework.zip",
            checksum: "3703f8ba850fc25f7f8f96d264b0a61ceb0b2aa322689787826240552570e3ea"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424131835.24891602591/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "7fd1fe50bf2ec56bd631992a08a07a0a2f406e3625a31d1b6e020a5a1f22585d"
        ),
    ]
)
