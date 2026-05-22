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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522142021.26293234476/UseSmileID.xcframework.zip",
            checksum: "4c6370863dd321e2a75d458196e0500877d5a037ff6a81a9102306de30fd60d5"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522142021.26293234476/UseSmileIDML.xcframework.zip",
            checksum: "afa49050a812d71c650c9fbdbd3e9573626883c1d0cee47babbbcf4429cd579f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522142021.26293234476/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e62819ec09528677ca06d4003675e366f84d3cfa7a2583ae1c3662ef8b12383b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522142021.26293234476/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "8ac283643cbc58589c61d55bb52c1a390df528e22c5008468e9f176b34354581"
        ),
    ]
)
