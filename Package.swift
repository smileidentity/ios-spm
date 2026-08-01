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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260801133223.30701778953/UseSmileID.xcframework.zip",
            checksum: "b739811271ad58f85f2caec5a84a6bed68c7c51bb857317481f22e568c00fd64"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260801133223.30701778953/UseSmileIDBridge.xcframework.zip",
            checksum: "503afa4aeae328f97170daeb771d96318fc19cd413465e81bbeb55af92f5f0a1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260801133223.30701778953/UseSmileIDVisionFace.xcframework.zip",
            checksum: "eb302eae40361828d3bca90a05033affc526fce0be7065177c4c6172bb3f75ef"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260801133223.30701778953/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "620982abdb27bdaebee4efb7286250450cb166a0a5296d9eabec1ab0151693f3"
        ),
    ]
)
