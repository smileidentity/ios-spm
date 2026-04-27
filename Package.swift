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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260427101658.24989328670/UseSmileID.xcframework.zip",
            checksum: "8b7818cb8596c6dd4e7f73db6f1d51b1337ca04812b26e0b0c54aa9d5b720935"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260427101658.24989328670/UseSmileIDML.xcframework.zip",
            checksum: "47b4f878363ac6aa227faa4d38922133dfbf2766d64711bea00d9c269bd1b79e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260427101658.24989328670/UseSmileIDVisionFace.xcframework.zip",
            checksum: "77d056d91a743ed3aec517e2311208002417cfbcb599d074d44108c2100cbf17"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260427101658.24989328670/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ea8d884ec49c2e6c664a12f1024666d1aa26d86706e36199147abb7d745d3e3b"
        ),
    ]
)
