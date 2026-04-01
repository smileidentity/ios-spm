// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDML",
            targets: ["UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401122420.23848398316/UseSmileID.xcframework.zip",
            checksum: "dd4f886c077bc1eca56807d18832d3350c7be1fc98534274a68c923055adaf80"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401122420.23848398316/UseSmileIDML.xcframework.zip",
            checksum: "1fde3075b8994073ad2749c14e7bdd6c12ee3357857dcbef5ad2dc3d7a1e6265"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401122420.23848398316/UseSmileIDVisionFace.xcframework.zip",
            checksum: "c2df1a6f3d9c4a0db40fa8cf6a3b1a114e1f5dd4a0b8ab934168128919f4979a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401122420.23848398316/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "130261bb219b0dbd7e749d3cded511f602df5e8f1de8dcd6d223162be5348d6a"
        ),
    ]
)
