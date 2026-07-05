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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260705212611.28755420352/UseSmileID.xcframework.zip",
            checksum: "6a5d703c52bd2eafa2978a135b70dbce31c2d228be93363e552ac261fb4e0d1f"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260705212611.28755420352/UseSmileIDBridge.xcframework.zip",
            checksum: "95f5b9e32e0e6bf0e7177fb1f01f3dec532bec8efa8a178570c7ce547b020b46"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260705212611.28755420352/UseSmileIDVisionFace.xcframework.zip",
            checksum: "573c13152d4dc2d49131975c0ee5851409d682bf4146d21dc4646e945e8e0faa"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260705212611.28755420352/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "f9a711b815d372c119d3620e052afccb135039c43623405f04744bcef63697ff"
        ),
    ]
)
