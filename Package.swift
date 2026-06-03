// swift-tools-version: 5.9
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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603120821.26883719454/UseSmileID.xcframework.zip",
            checksum: "f4cb1b5ff04020904ae9e5c85500699c6c2929aabd7e01b766a46d37567437f1"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603120821.26883719454/UseSmileIDBridge.xcframework.zip",
            checksum: "5e4bc44778626957a3fcdd5a60eb4b2e4a645f6861e034dc0b8135983d03f3e9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603120821.26883719454/UseSmileIDVisionFace.xcframework.zip",
            checksum: "cc242d0df10c2ab3a583edf8885cb515ec8aa96e5557ca4d44bf3af9ee9d4f5b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603120821.26883719454/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "8e9300d134fb1fdf16b1a445d6241e8deb43e682c420fd9210e91ba60c329f6d"
        ),
    ]
)
