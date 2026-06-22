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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622121154.27951688625/UseSmileID.xcframework.zip",
            checksum: "8db137a8d5d09a6db79d45fae522de487696b367318de46eaa543956e909ded7"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622121154.27951688625/UseSmileIDBridge.xcframework.zip",
            checksum: "f508257fc11777441cc36654067505c3f8260452eef1e99a317f02f7dcd831b5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622121154.27951688625/UseSmileIDVisionFace.xcframework.zip",
            checksum: "3bbff90d5b61e01c2d37c4e019821e47c60fb5b1954234a49aadee7a49efed25"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622121154.27951688625/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ea2babc99089fa40de88994f0326ee712884b53899b31e60342bef03b012968a"
        ),
    ]
)
