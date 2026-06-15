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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615210626.27576424755/UseSmileID.xcframework.zip",
            checksum: "8030d1162c39011e392084c397d6d9cb88f853c6488aea8ee05ffe00b6df2ee0"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615210626.27576424755/UseSmileIDBridge.xcframework.zip",
            checksum: "83a9255645eac32750ff399e098d6d24f549d40aa4a3a34562761a2c1160de02"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615210626.27576424755/UseSmileIDVisionFace.xcframework.zip",
            checksum: "fdfabb3c2feab73c874d5bd8b14c8db14de51928c2df3d4ca0e9c0b159f701cd"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615210626.27576424755/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4cc5e8d6d2590bdc82c86cf975a92d07fa9ba3d8891d9d006aca6d1dded386de"
        ),
    ]
)
