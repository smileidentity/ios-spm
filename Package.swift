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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401125205.23849520679/UseSmileID.xcframework.zip",
            checksum: "f692b9fb099c4032de442dec72478362a96d02f0ffe622c8d1bb04be18230f93"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401125205.23849520679/UseSmileIDML.xcframework.zip",
            checksum: "69d37d0f1f2de35700b4c15d7301a1327f67dcc4af25c52eb849ef88f364a745"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401125205.23849520679/UseSmileIDVisionFace.xcframework.zip",
            checksum: "1e0457fd9ea6e6ce1b98a80aee7de28ac09a56db0b544fb165a0e98c677fe0a1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401125205.23849520679/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "7c8877ad50add88cad1aa190d44d5dd7aea4c65e858d30f5b4372196a9344c9a"
        ),
    ]
)
