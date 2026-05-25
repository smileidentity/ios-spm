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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525082137.26390909787/UseSmileID.xcframework.zip",
            checksum: "9926219868d6385ca4fe4f4fe91c23dbd4430dc589cd1c7cbf7b0ea0740a8564"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525082137.26390909787/UseSmileIDML.xcframework.zip",
            checksum: "357b6a1840ca3e24fa9192ea0ca1159889497511065377589ef8d06d15f9aa06"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525082137.26390909787/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d4d8d106069b82aceada21ef8d40d26cdd1dc012330b541acdb42c30435cee64"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525082137.26390909787/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "540341925310992f710ff49e3e65badcc31e39892f8ce37c787f8522533741f2"
        ),
    ]
)
