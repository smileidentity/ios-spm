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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521033122.26203756085/UseSmileID.xcframework.zip",
            checksum: "fe6b0b557f9db5652c129692e0546d0c5fc85eb341e1bccfcfef8d0a74cee6aa"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521033122.26203756085/UseSmileIDML.xcframework.zip",
            checksum: "0e09731826146dc7c9a023f71b9d446176c0c653c33eede15b16556a98fee9ed"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521033122.26203756085/UseSmileIDVisionFace.xcframework.zip",
            checksum: "6bd0ee3afa4589b1d71cd4c716c8f50c62fa298704a409372d9f448ed1abcc95"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521033122.26203756085/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "38ffbe5e821428061b525ea458f59725a6609dd5dceebbe79a045db6aa43910c"
        ),
    ]
)
