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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260501045346.25202839790/UseSmileID.xcframework.zip",
            checksum: "624c2315fb84ef40e38e8047cdf2f99dc968478458d479c13028069287893812"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260501045346.25202839790/UseSmileIDML.xcframework.zip",
            checksum: "ce4f2662fcaa0b506adc15adcd84e1135b3fdc2668c217e0d64e8ba653b5f302"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260501045346.25202839790/UseSmileIDVisionFace.xcframework.zip",
            checksum: "14f13a4d02eb4d1bbd5d962d22c5737b3c2cc0d45f2b79ef3a5d7b15a602054f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260501045346.25202839790/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ae2e7cf718ba3edf869c175ec4f3e2ddf6e2d1e12e2892ab636b16a4e9f8bc2a"
        ),
    ]
)
