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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629204458.28401494724/UseSmileID.xcframework.zip",
            checksum: "dced232cae96b125c066a66c9d512cec5fb2f7233a746b52ee8f7218b1e714a1"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629204458.28401494724/UseSmileIDBridge.xcframework.zip",
            checksum: "2aafb0cf2751e2c711529970ddaed9eb2390851fa99bf3bf3793662c218d8d0f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629204458.28401494724/UseSmileIDVisionFace.xcframework.zip",
            checksum: "fa48a7c7a46751c29e29016cdde8dfd0c4f3e525efaba326cfbb62cfe6d47cdf"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629204458.28401494724/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "9f0545b29611196143123993d82923d68ade78cf46a4bc2233ce2dd7c1cae22a"
        ),
    ]
)
