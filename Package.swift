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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413162227.24354311893/UseSmileID.xcframework.zip",
            checksum: "d9b71be5e7d8604ba6a755ec513778f29319c2cbb812b40d70c950eb775d48b1"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413162227.24354311893/UseSmileIDML.xcframework.zip",
            checksum: "4b76937f062caf11a83a95f7387f0c80b7e5d371f585f63226b05fb90de394ca"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413162227.24354311893/UseSmileIDVisionFace.xcframework.zip",
            checksum: "f7554a1f31290c3d768487ac320ccec6533817d11c1a5d933d9193bc0fbb8d3b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413162227.24354311893/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "18dca9e6752763885e24699747acc663af7dcbf3e73f0ad378a3eedc450c38db"
        ),
    ]
)
