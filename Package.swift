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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401160004.23857991563/UseSmileID.xcframework.zip",
            checksum: "419fc17b05786e6ed8ff078935012da5f3c6e3618015ce27723238fe57e6e065"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401160004.23857991563/UseSmileIDML.xcframework.zip",
            checksum: "14c43c9bf20c1f5cd5630e1bb56dd74fe755bad62cf9b3349f4424501d0a388f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401160004.23857991563/UseSmileIDVisionFace.xcframework.zip",
            checksum: "8075d9f84dc81e6f0cc04dcf267467797e477bd3e5a99613ebebf99d5b296cfb"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401160004.23857991563/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "cf43087c22f11710290c9d48cc37f7c5ed478a2b970221a3749876d4050cee10"
        ),
    ]
)
