// swift-tools-version: 6.0
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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706193641.28818010501/UseSmileID.xcframework.zip",
            checksum: "e50ebb90360da10a0e9477f2e85d3155375c74fcad4e8654d29f152635937154"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706193641.28818010501/UseSmileIDBridge.xcframework.zip",
            checksum: "c1bd972b5a00bd0d878a495ea92e228a09b72269dd959ee308d3d59eca7108de"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706193641.28818010501/UseSmileIDVisionFace.xcframework.zip",
            checksum: "6b48ec2a1f3060188a5bebcf638deaf63e7aa15b6263f43282dd82913472ef23"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706193641.28818010501/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "204c7eb73f6d2c3a1c8432cce807622c7eed9eac73eb83b3a6a5c286bb311e82"
        ),
    ]
)
