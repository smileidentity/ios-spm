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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522072957.26274598797/UseSmileID.xcframework.zip",
            checksum: "4d332eca1491a1c8e490877c0bca969282c8e0c053eb5f1acb9340a8fbc90e47"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522072957.26274598797/UseSmileIDML.xcframework.zip",
            checksum: "385274b903916544fada9d1c9e06f93b39826ca437b3660cf2247833defd5ef5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522072957.26274598797/UseSmileIDVisionFace.xcframework.zip",
            checksum: "5aac6086044ad769ec7f8b929f1ef88258fa19e1c490eb7372913e6fd4e43e57"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522072957.26274598797/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "feb37f22225ff94cdf9d1562e43b89df7c70ea5c04954061219158492b30870f"
        ),
    ]
)
