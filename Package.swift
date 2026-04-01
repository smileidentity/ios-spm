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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401141844.23853342940/UseSmileID.xcframework.zip",
            checksum: "bb20dcd0c95876c4b337194f7902216c4309a81e21d95fcd6c59808589cc34f7"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401141844.23853342940/UseSmileIDML.xcframework.zip",
            checksum: "54c511a7a2b1f62b4ac985cd34dca99c858f3ab1e61b77d81a4aa693c9b70e51"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401141844.23853342940/UseSmileIDVisionFace.xcframework.zip",
            checksum: "658dd03e07b05daa0d821e97c5ee0bf4d60ff4ac6f2491d60994291256fcc96d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401141844.23853342940/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "cb383183c2a38a5e4377c3cb17017cd00bb5dd3fad1d9f6ab5a1e91c614060b1"
        ),
    ]
)
