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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260404111003.23977678602/UseSmileID.xcframework.zip",
            checksum: "8e2fd51d0513f4c20e0a7aa5ae2ba2d1fbe00329c822d77c96fbf7834af5da43"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260404111003.23977678602/UseSmileIDML.xcframework.zip",
            checksum: "e442834067a1f4434db05595f76e0863b5b62345422cee2a59417f80f9603e85"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260404111003.23977678602/UseSmileIDVisionFace.xcframework.zip",
            checksum: "7c148ec7b5c8c0fa848924cfe8aeed50b84166896107f5295097043ba4c8c233"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260404111003.23977678602/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "c0ec03ba6443c8149330ac727338db87f920b5b9f237e3f939f7a354fecf7f83"
        ),
    ]
)
