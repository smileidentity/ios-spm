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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629175914.28392323906/UseSmileID.xcframework.zip",
            checksum: "ecdf1ce6a4cf92d9699f4a416f7b45ed98cf54fcba001f4f20336eac0ab71d57"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629175914.28392323906/UseSmileIDBridge.xcframework.zip",
            checksum: "9a1c93e4013d631e6281a297fc3e2298c15a706d4b5bd01f1de78ae37ae6593c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629175914.28392323906/UseSmileIDVisionFace.xcframework.zip",
            checksum: "423b1a304641e298675ef32992cf11869041efa40156a49f24e71f81cd1c0ee5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629175914.28392323906/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "0d56d3215344211d909f0c3f882e5acfd994fccc892506fbcb96be26f1e3bd8c"
        ),
    ]
)
