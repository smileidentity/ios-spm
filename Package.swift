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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709203050.29048152098/UseSmileID.xcframework.zip",
            checksum: "7ec875947f3da953356cf4544456f3df508c3d1ee9bb9faa16063c2369c1c017"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709203050.29048152098/UseSmileIDBridge.xcframework.zip",
            checksum: "32e24e7b9bb0dbe04faf6549566712ef09bac5e1897d124d749717e7ea5ab4bd"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709203050.29048152098/UseSmileIDVisionFace.xcframework.zip",
            checksum: "687cc935febb78763ceea37fe5147ee416c7eee287d996a30fa5a1442cec783c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709203050.29048152098/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "beee32f965ac7ce6125663d10842e5d5794191240698317fcc2b354ddd11a6b4"
        ),
    ]
)
