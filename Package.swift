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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511164118.25683698546/UseSmileID.xcframework.zip",
            checksum: "b5480be7787d128dda93c42ad899fe2d39b1b91b13f64c919c42a30902d38a70"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511164118.25683698546/UseSmileIDML.xcframework.zip",
            checksum: "8e3ecd2da2b87b5ec2591c31e78c5312fb2a7184ed2e0c444f884f6b0c9d9c29"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511164118.25683698546/UseSmileIDVisionFace.xcframework.zip",
            checksum: "5ae69d083e15dc1065652fbf721e34a19ed67fc14a326adc9ea26bb7b69a3798"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511164118.25683698546/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "0a2a621b73703148cf36c8f5481090ead0b8fe0005806f63c458dcbd39c7676d"
        ),
    ]
)
