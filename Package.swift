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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525104638.26396558628/UseSmileID.xcframework.zip",
            checksum: "312ab60d44e2af8fcfc00e94fdde37dc6bf43e1bc2e437c9dae09ab71f9e7eba"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525104638.26396558628/UseSmileIDML.xcframework.zip",
            checksum: "cfd6d9796f6b156851aa9592ca7a6a261eed7026d7eb7534b2eee6ea626b0b7f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525104638.26396558628/UseSmileIDVisionFace.xcframework.zip",
            checksum: "b6e0458bfe8457887d1cd77b6a3aec8e85298dfb808c589bcd064fd3549ea10e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525104638.26396558628/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "390cf9ac78a476f5c15931828a9bc1f869343a9a8515075ad9bdbe6eb4c2daa4"
        ),
    ]
)
