// swift-tools-version: 5.9
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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613114921.27465922852/UseSmileID.xcframework.zip",
            checksum: "34564cc0f6ee4125904dbb64572f223b5e3c517da30d949784f5d74fc7032292"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613114921.27465922852/UseSmileIDBridge.xcframework.zip",
            checksum: "005780c7621580bdeb47a0b453bfddc1dc22af9b6fec8106dd855758afdbb358"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613114921.27465922852/UseSmileIDVisionFace.xcframework.zip",
            checksum: "088f62484590d03f6c8b263dc0035d375952fcda239bdc5cde0cb80a80b44879"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613114921.27465922852/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "a21cacc2f040493923311243fc531b4710bf77b3603637254d50b3a7b9416282"
        ),
    ]
)
