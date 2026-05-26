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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260526054833.26434797214/UseSmileID.xcframework.zip",
            checksum: "f5b04631326937383b0ca876c8ce582d89baf7ff529312a82b3301f3d53f9134"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260526054833.26434797214/UseSmileIDML.xcframework.zip",
            checksum: "ba6d85b19fc759c60364cad008be346da310aebad1181f34f5ab7008e79a9d09"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260526054833.26434797214/UseSmileIDVisionFace.xcframework.zip",
            checksum: "1c1696a47e0a3afa08e43ffb004c26a11245f275e091ef389b08a0253f1c3e81"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260526054833.26434797214/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "62633551dc16d44cd5a80c8d2ad3c16422a051d10390f35ca92d3cad6b431efc"
        ),
    ]
)
