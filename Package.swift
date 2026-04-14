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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260414105013.24394900038/UseSmileID.xcframework.zip",
            checksum: "e5f81e65d2eb59913686ea2474ddffa5afea4bc366f996401794e9062d6545a2"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260414105013.24394900038/UseSmileIDML.xcframework.zip",
            checksum: "937b8b9166c4e2aab83a5a6d4d317fa2e7d1b99fc2af795e9f46fe1bf8267013"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260414105013.24394900038/UseSmileIDVisionFace.xcframework.zip",
            checksum: "4d623a5a8d257def0347426aca7e0d7f619284b323da2bbbd14ca8893552869d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260414105013.24394900038/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2eee057d20ebdad9432f1ebaa5629f077d6e40cc59e9874738b7db81ee7685dd"
        ),
    ]
)
