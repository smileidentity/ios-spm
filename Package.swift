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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812103415.31587682797/UseSmileID.xcframework.zip",
            checksum: "51f721b90b6b1a9a9df87cb2daed73585a4e530c21a34503f549c7f4a9980d37"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812103415.31587682797/UseSmileIDBridge.xcframework.zip",
            checksum: "aa37ab452f9ef2caa82778e615a0c3fad3f8327d92d6bf2265f6109e8ccb36b7"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812103415.31587682797/UseSmileIDVisionFace.xcframework.zip",
            checksum: "4647c612e562dd9ab14a47b8c75dbf6647eab8b0075ccd3b335547ca6dbfa4b0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812103415.31587682797/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "9e03b6ca0c81da493a8081738ba507cbf360897fabef3b86d608c0e7f059932f"
        ),
    ]
)
