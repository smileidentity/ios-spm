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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511105341.25665805716/UseSmileID.xcframework.zip",
            checksum: "a27fd4a161abe72d00fa6014ff7e44e8119304e78c816e6c30bca0f16b2ebbae"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511105341.25665805716/UseSmileIDML.xcframework.zip",
            checksum: "afc9a730da85c50ce319b454181bdf35adeda8e64a76d38561a95d76ec96b995"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511105341.25665805716/UseSmileIDVisionFace.xcframework.zip",
            checksum: "3aeb5125c3519f764dfcfcc41b5b7b1d139a5e1a3b8fc765250eeeaee4b37622"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511105341.25665805716/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "9f876517f42f545a6f169ad29427dcbc3adaefbd7fa767fcb45cd0d56bfa8fc1"
        ),
    ]
)
