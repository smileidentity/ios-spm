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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260414210830.24423030794/UseSmileID.xcframework.zip",
            checksum: "4a5cdf487c1595d420ca5213c31ac66c7c594a73f8e92e149cce37c130b1b8cd"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260414210830.24423030794/UseSmileIDML.xcframework.zip",
            checksum: "ed7d286ed697ae6e78da5faa7f1b2f2b8a9781f19543f106520fbc61ea93ed20"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260414210830.24423030794/UseSmileIDVisionFace.xcframework.zip",
            checksum: "8cd856b0117d8f6ae1e09e2a15bd11df7c2bc214392f30091c0d5c941d9da1eb"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260414210830.24423030794/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "b774c065c5c0647b329dee91c6d03ea63a5b538c3d40471bedd38d40bbbb72c3"
        ),
    ]
)
