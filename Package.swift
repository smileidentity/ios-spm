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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521124733.26226848457/UseSmileID.xcframework.zip",
            checksum: "671b5fac93af15efbd9d7ae344c80ec7ddfb201dfa2e2786b6553bb15e9d38eb"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521124733.26226848457/UseSmileIDML.xcframework.zip",
            checksum: "ba0626048883ba44230a15cba61a8398bad594b30a9cf51714cb3696435be283"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521124733.26226848457/UseSmileIDVisionFace.xcframework.zip",
            checksum: "227b8bb443133458ec4bfb81402dbc54837daa3089986bf5cf811c92cf8eb61d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521124733.26226848457/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "9a7c5811d489bc4a251a941afb6fbab4e68c298c4971249f447110eb1a63caf6"
        ),
    ]
)
