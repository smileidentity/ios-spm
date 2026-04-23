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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423103207.24830383244/UseSmileID.xcframework.zip",
            checksum: "fe7f7e84bc8533c25a59450fe824ef333461ba7b6677500c55c5a551148da0a0"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423103207.24830383244/UseSmileIDML.xcframework.zip",
            checksum: "f10c378d680340d68aee4bcdd37a02199597364222b736384771a4a939050a8d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423103207.24830383244/UseSmileIDVisionFace.xcframework.zip",
            checksum: "b973d90fbedbd3860fe12ed48bc8201d99f7d89c98fea25cc421cebdb2e4c81d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423103207.24830383244/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "33508b5150af52d2fe0cb25732f34b58be77dbf83447bb14d3543a7493ff840a"
        ),
    ]
)
