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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413123517.24343633579/UseSmileID.xcframework.zip",
            checksum: "161a3bc6b298dabc4150a5e64a364f19bbb2e94a87aa211eb155b30958e3bfec"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413123517.24343633579/UseSmileIDML.xcframework.zip",
            checksum: "c2d143ad646f3b87f787ebeea76d13a98f1ad17a4ae181c982f8e7ddee1c0837"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413123517.24343633579/UseSmileIDVisionFace.xcframework.zip",
            checksum: "cb6934a7279350353d6f218f67f66fa0c533421809d7b707ec67e7cb4dc9fc11"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413123517.24343633579/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2a7b12aa0a343914d6400ecfc566894de850b8d80898276713ad10db176ff4da"
        ),
    ]
)
