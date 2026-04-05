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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260405105308.24000014885/UseSmileID.xcframework.zip",
            checksum: "a11908432319b89c68a1d8b42d3e3954e92a40288ae9b2747cb398ba2c82550b"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260405105308.24000014885/UseSmileIDML.xcframework.zip",
            checksum: "038b731e6a26a637b982cf0c3e90916f8535014d0a74d5bcff55a6cc635697d8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260405105308.24000014885/UseSmileIDVisionFace.xcframework.zip",
            checksum: "5ce591882d258bba1a16c74ed055e5f104474cc64062d7aa620b773e0c08612d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260405105308.24000014885/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "0f4aa647f5b7e646401c2b013c5210fca83023e4134bd7336d66b8be52c21407"
        ),
    ]
)
