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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519153522.26107724479/UseSmileID.xcframework.zip",
            checksum: "333558711b9013210425ef4ead621eebb7ab99e292ac84850f38f2337124f42e"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519153522.26107724479/UseSmileIDML.xcframework.zip",
            checksum: "1ca253e1e83db44af41451a161bb0565c99a60701ff17df44bce5f7102d14153"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519153522.26107724479/UseSmileIDVisionFace.xcframework.zip",
            checksum: "7d1f218780cbd8f6fad1ca9b18699eef09447a2750419988f1652ac6eb972760"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519153522.26107724479/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "6f86ae220e6f711341d4f237131aad4d7fcb69dcbfb3dd53661e69acbaa78882"
        ),
    ]
)
