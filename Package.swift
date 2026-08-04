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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804173439.30934202444/UseSmileID.xcframework.zip",
            checksum: "d51c026fd1e229df6b5728265caf90d8bffa975380266834fc61bb1187dc0284"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804173439.30934202444/UseSmileIDBridge.xcframework.zip",
            checksum: "aca4d7b9007aa5b448312661d3df8290ccb3940b92486a3f8db2739757daed7d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804173439.30934202444/UseSmileIDVisionFace.xcframework.zip",
            checksum: "5131e36297a73f41764798ccf51459af0a38a97046b1a74094707ce2f4cadaba"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804173439.30934202444/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "8f7cbf4f65b6bb85c3a2c08c1045e4abb9c388a836df8eabe638fd0506c8dbb3"
        ),
    ]
)
