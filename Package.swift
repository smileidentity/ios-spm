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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260810203532.31429341597/UseSmileID.xcframework.zip",
            checksum: "a77c6fb8b32f916a2712d6de30db80464d1fa81aab67afb2c7eb22b003916c4a"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260810203532.31429341597/UseSmileIDBridge.xcframework.zip",
            checksum: "2659e982f2633578954e826fd51982c3000d79e60174ee4b1f40f6e7dd7a4cd3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260810203532.31429341597/UseSmileIDVisionFace.xcframework.zip",
            checksum: "3ad373c980c7f7473f794601c6345a7d7f22039297ddd0bfc6c414a231b34c9c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260810203532.31429341597/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "40931cde504d69065e9aac92a1c632e300342f2219bb02359c8507af43f7ecf4"
        ),
    ]
)
