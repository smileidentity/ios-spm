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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260622092224.27942640712/UseSmileID.xcframework.zip",
            checksum: "ff42bb77f06c28bb7d427033a364ba92aa58593bb109ae2b7d2b42a663c88023"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260622092224.27942640712/UseSmileIDBridge.xcframework.zip",
            checksum: "f20e675aa8564ad0eb95fe9c2b932bb25f74540249798559925338e5e742c5b2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260622092224.27942640712/UseSmileIDVisionFace.xcframework.zip",
            checksum: "b399c4861477a50ea71210d2ab62becbba46a501f366f27c66dd3feeb698e66b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260622092224.27942640712/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "14959a648fb2220762bb485f80fda81f56e3d540bf1ec3a87d3ec75545cf91fe"
        ),
    ]
)
