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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728210817.30399104868/UseSmileID.xcframework.zip",
            checksum: "d2423206a3f634e2f0b4bff9d54aea01c64c72461804c1f3487e47828ea09c8d"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728210817.30399104868/UseSmileIDBridge.xcframework.zip",
            checksum: "d7fb8a46a85d77019252b6ad5626dacb7a61e4bc07e0666779bce49e79a27470"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728210817.30399104868/UseSmileIDVisionFace.xcframework.zip",
            checksum: "74dea9d8fdcb56658018e19d9eedd93cb493ca36e2cec689a5cb4a52363117f1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728210817.30399104868/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "fa4eaeae64b13008c9823aca545eaeff59be04fa8a3d503385fcb564dacc4e15"
        ),
    ]
)
