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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602152510.26829864969/UseSmileID.xcframework.zip",
            checksum: "999a2e6245e86cfdb9358f1f9ecd4675451938a1b421b145a21242110327d8ae"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602152510.26829864969/UseSmileIDBridge.xcframework.zip",
            checksum: "ef989d809f4f5a4bbc00cc71177cc474f5697ea4d92614029d62110f4d81ab5f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602152510.26829864969/UseSmileIDVisionFace.xcframework.zip",
            checksum: "f554c44292746af2f9da9dbb847acfe7b799abba9e9c22b830053939516349bf"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602152510.26829864969/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "6754e90288db49f9cf0a6ff6a8324f7055c329fe1c27fb423b9a656e2e08d911"
        ),
    ]
)
