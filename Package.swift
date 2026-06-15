// swift-tools-version: 5.9
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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615151330.27556227396/UseSmileID.xcframework.zip",
            checksum: "f82f805b13e27a1ee4c0033a66b43461be9573878e5fe3bb732da54dcabd690c"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615151330.27556227396/UseSmileIDBridge.xcframework.zip",
            checksum: "b2aa3226f9df96cde8d84b05baaadbcdaa7b7bf7afbdbfdc4ab4a448bc7065b0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615151330.27556227396/UseSmileIDVisionFace.xcframework.zip",
            checksum: "0f185fb96f79bf3bcbab0b2a614e9be53a5a1989b210a94dfe1c310034cfb0e2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615151330.27556227396/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "dbdcb9a6122e99cc5bc244360b78f383cec262f30095d42be2933f660c835367"
        ),
    ]
)
