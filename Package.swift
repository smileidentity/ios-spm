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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525160005.26409179523/UseSmileID.xcframework.zip",
            checksum: "3d349b9a4149269bab0fdcf56b73e248a595b13c597f3beb67975dd6372a4bbe"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525160005.26409179523/UseSmileIDML.xcframework.zip",
            checksum: "369e5c70383847d79f41de55eb71da60588e920d6a52c6741449650f9e29c9b0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525160005.26409179523/UseSmileIDVisionFace.xcframework.zip",
            checksum: "475fb22f6e1515a4b3ea53a02d9eedcbab16d3a88c86d5c7c49373d8f12b80e3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525160005.26409179523/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "28cded202a74a5847248fb85ea7e0f0e97f6d5a0bba2bbfaf1697d7fef51c73f"
        ),
    ]
)
