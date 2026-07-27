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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260727125541.30265629554/UseSmileID.xcframework.zip",
            checksum: "71bd193dd86032976fdbc8d8b41244cc52974685856f74260c3ea1092070075c"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260727125541.30265629554/UseSmileIDBridge.xcframework.zip",
            checksum: "486a0e1a477cfb51c61ee4c3129970bacdd17ebd488c40b075198220049c99ad"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260727125541.30265629554/UseSmileIDVisionFace.xcframework.zip",
            checksum: "5853475b6fcd8b6299f3c192ffe6a4790227404ba9ae0efad38290ddfed6f3bc"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260727125541.30265629554/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "455574615212d02a70ad21cd894a5fe6fe7a94bdab22e8f05cb3cadabf892dea"
        ),
    ]
)
