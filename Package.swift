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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522072714.26274485162/UseSmileID.xcframework.zip",
            checksum: "bc09ac708352b88abe601429359f605189e9af4261d75952657cee69343009a1"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522072714.26274485162/UseSmileIDML.xcframework.zip",
            checksum: "0f80b879a2ea5b415672e855c9d34e70afca59c042ee77627dcb92926ea764af"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522072714.26274485162/UseSmileIDVisionFace.xcframework.zip",
            checksum: "7741ef248ff8144f7e34783d72225b79beefa86c1328d87dc605280a08c721eb"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522072714.26274485162/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "565ed58363e4ce5d7b35700bce6b7707164d7b185f76ce7a8f76c282aa07856d"
        ),
    ]
)
