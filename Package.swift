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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519103642.26091824055/UseSmileID.xcframework.zip",
            checksum: "a5460ab8ce64586b09864e13a56884ae6742d83ff85d501e0cd9805dff778d03"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519103642.26091824055/UseSmileIDML.xcframework.zip",
            checksum: "42e826e392780edf88a73c55c711b339bba8fbb9d1c71cae2bad78262d1052c5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519103642.26091824055/UseSmileIDVisionFace.xcframework.zip",
            checksum: "c094c4688d43a3f2d42d43380ae0d81aa3fbc811cd6de8f8426e4fb1b7db3a3e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519103642.26091824055/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "1e5b46bd5f9d6337dde0b998c1fabed93fada70ef8425cf155a0f7c6dd478631"
        ),
    ]
)
