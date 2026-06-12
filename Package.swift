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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612114746.27413716123/UseSmileID.xcframework.zip",
            checksum: "12e8b239907a9229a5bfa803df4a5e38803525398bffba49313a8021c863d1b0"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612114746.27413716123/UseSmileIDBridge.xcframework.zip",
            checksum: "bb7d0078c66470de07a3a9a786b94b2a8bd98be1b7095bb6b5e59ac50e5105d7"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612114746.27413716123/UseSmileIDVisionFace.xcframework.zip",
            checksum: "8155d5e90385c6f9d04b533ddd4124cfca021b70f3a6d999f9005377b4943f1a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612114746.27413716123/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "e28abd5ea7f81f60f0b23dc229fddd96adddcd7d0ea94d63fd764aef94333679"
        ),
    ]
)
