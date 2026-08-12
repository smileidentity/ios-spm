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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812132641.31601072466/UseSmileID.xcframework.zip",
            checksum: "8b6e4a3dc9df14ba84387757eaf44c6d77646cdffc0c225d84ee12018239337f"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812132641.31601072466/UseSmileIDBridge.xcframework.zip",
            checksum: "92b24064f7aae530ee45762591a6e16b2e1031a5fa890709bdcdc28878808102"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812132641.31601072466/UseSmileIDVisionFace.xcframework.zip",
            checksum: "75c7e59fa1347782bb94f2758f121c47f71b1edc1054a201c93f53db03a2833a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812132641.31601072466/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "363da6afbb30a3b9a37df6a707cdbcc919e4798bdb8a6b6f02148cda1a5c2609"
        ),
    ]
)
