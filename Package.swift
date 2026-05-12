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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260512111227.25730743807/UseSmileID.xcframework.zip",
            checksum: "268957fa21358140f53a3d729b1724e63b651503d181c7734d77443ae763e02d"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260512111227.25730743807/UseSmileIDML.xcframework.zip",
            checksum: "545765fb20410388421cd6dd888b4bb55f405e8bf32107354946c6c7b89feb2d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260512111227.25730743807/UseSmileIDVisionFace.xcframework.zip",
            checksum: "1e17da42e966d1612ed24fd0bd592cef398f15afdb975c90a01c629999bddf96"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260512111227.25730743807/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "248b5d36e228923a415f9a14fa380b5b41e56b7e7bf9fe8e27ec1d763866f789"
        ),
    ]
)
