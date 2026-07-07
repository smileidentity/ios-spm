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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707094104.28856712367/UseSmileID.xcframework.zip",
            checksum: "b66eb28138f537104eb960b1f04ad5f31d7a5efbc53aaab67c6918ca398048d1"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707094104.28856712367/UseSmileIDBridge.xcframework.zip",
            checksum: "aebc730df4d4375aca71889b9e8221cb4c1b4b2cb968efb0df94714969fd5ff2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707094104.28856712367/UseSmileIDVisionFace.xcframework.zip",
            checksum: "429ccc9769782899e48950367d8048c3509b830233d26439e96e24b028e5e0e3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707094104.28856712367/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ee29b093b6cee662372718c68a28fbe312b4e36f449458d855aabf81942a4a20"
        ),
    ]
)
