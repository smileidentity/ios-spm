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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521130025.26227500095/UseSmileID.xcframework.zip",
            checksum: "530753c1a85b0a89082e85ef7c0086f728f10ecc361347ef6196b1c9edd9a69e"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521130025.26227500095/UseSmileIDML.xcframework.zip",
            checksum: "4830b2579ce066519683255865410fd3cb38e6ecbda8fd7dcb2b34cdaf452f52"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521130025.26227500095/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e355a0b5df02865ee04b278a6b463bb507583c0fe8dae753cd9a22c278a61ae6"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521130025.26227500095/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "44bb3299e6c090ca776e59303df82f0e0197710b724ece09d1699dec83cce521"
        ),
    ]
)
