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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260811133114.31496125576/UseSmileID.xcframework.zip",
            checksum: "cd59845c9ecf889427c276666ffd97ae9a40f68dc00ab5e140adc15c79274fe9"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260811133114.31496125576/UseSmileIDBridge.xcframework.zip",
            checksum: "0928d31ad789c3730af8048d87542ed91e96400c171b60e45d6fcd99a3e24710"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260811133114.31496125576/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e2936e23e0b08c3a9475fa955600692f1a58b74e4dceedfd28021dd1ed4549fb"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260811133114.31496125576/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d8a89d1d6ee9694801d3cde709b38be707410b2727bf2ed5f0d36d93fb390a02"
        ),
    ]
)
