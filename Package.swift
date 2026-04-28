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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428184831.25071487152/UseSmileID.xcframework.zip",
            checksum: "bb75bb2cbc7334cd4c72f9c0f9d1f2408a1211c61d6b1b1f59bb1125a7008d9c"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428184831.25071487152/UseSmileIDML.xcframework.zip",
            checksum: "7b8dd1787c1b7b20e2abf571ba2904d24120508dddcc4a6ee0c6e8d439f4c433"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428184831.25071487152/UseSmileIDVisionFace.xcframework.zip",
            checksum: "892819675ff159103e0868aee86a1bb787c3bc04a0f074b617e0be0896e72e24"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428184831.25071487152/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "3cf48e267498fe0763c0dc7411927b70edaf05b9c29c3483d8d78e4bd70bcfb1"
        ),
    ]
)
