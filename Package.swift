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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730112357.30537769865/UseSmileID.xcframework.zip",
            checksum: "4cbffef208f0a4b42371e438e626ebfa65e54070a2941a687aa53e48a8a6aa3b"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730112357.30537769865/UseSmileIDBridge.xcframework.zip",
            checksum: "e00d5024f996cc2de552fd4453ce635695a63d0124708e9caa77932e284baeec"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730112357.30537769865/UseSmileIDVisionFace.xcframework.zip",
            checksum: "da9c83d81e48ae133dbaeb33a5c1d6bcfcc8db688696df86f5576fd7b56cf345"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730112357.30537769865/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d6969f886effd83832db771e5b2afb2ec47f4479386d79a3919ce7a0277acd63"
        ),
    ]
)
