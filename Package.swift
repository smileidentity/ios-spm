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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260608122103.27137239380/UseSmileID.xcframework.zip",
            checksum: "6697ef6b217d2b90428af873ee520612ef38a3a45f7057fecca7439591e5c709"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260608122103.27137239380/UseSmileIDBridge.xcframework.zip",
            checksum: "51f9eec8cb54d5f64449c9be58b8242b61bb2ad1371a46b403405bf25c9d28dc"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260608122103.27137239380/UseSmileIDVisionFace.xcframework.zip",
            checksum: "bb0f9b0f2dc55861859a29a6c5e4056c884316e226842e660962fa83d8d5f75c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260608122103.27137239380/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "bddbe4997b2e84b31d0da82a90e58c767345d8915e1b7ce4e138412f735174e1"
        ),
    ]
)
