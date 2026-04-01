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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT/UseSmileID.xcframework.zip",
            checksum: "ab90fe32fd4065fe4b5165abd79b5ffccc86ad82b0c028aa7e3fd8e6ad40b2a9"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT/UseSmileIDML.xcframework.zip",
            checksum: "3f157f0562d352162c8d751ca26b47d91f45352aaa6830a46f669127f057838a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT/UseSmileIDVisionFace.xcframework.zip",
            checksum: "721b9d3b846cfd8e4a049a27281adeb41947461d9ac316b2f1e6ead9e890ecb7"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "57eb0e0edb6a5d292750760cae9d55fb93afc0980379bb9a7458f3e224511c14"
        ),
    ]
)
