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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706125319.28792528704/UseSmileID.xcframework.zip",
            checksum: "3ab3a1ba5784669afd7192e1f9431605389213c5b8f1b67698eb96f6271b590d"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706125319.28792528704/UseSmileIDBridge.xcframework.zip",
            checksum: "08a0de51d06fbd1f9eb0df77ee580ccea5a61a78abdbe7e96fc8c9c3f4ff849c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706125319.28792528704/UseSmileIDVisionFace.xcframework.zip",
            checksum: "f22a11a61723de574cbdd376bc480d5910efac34f2c3bcf3fe1f44ec5bd8f22c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706125319.28792528704/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "0a718d903cb92c3205951b513ef49b27eb2190e64295457bbe553fa5963edfd1"
        ),
    ]
)
