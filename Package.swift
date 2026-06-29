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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629085330.28360220682/UseSmileID.xcframework.zip",
            checksum: "9dbc240218da8ccdb6e7a6320d0a8065bc2bca4db1b0483fa4626772a0fd585c"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629085330.28360220682/UseSmileIDBridge.xcframework.zip",
            checksum: "f52086f186b80b88acc17e2ef81d954c75d5d100f96ceef4c346f93d1916056c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629085330.28360220682/UseSmileIDVisionFace.xcframework.zip",
            checksum: "6f43dcb595e15445bd5d13dccf24306a042f7895134fb9de1857a050def84836"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629085330.28360220682/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "59fb1b2498536e08dcbd0f7ab36d9cfee382fc4f572f0cac12f93523cdce0bb3"
        ),
    ]
)
