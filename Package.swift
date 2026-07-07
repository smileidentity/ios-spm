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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707095826.28857714731/UseSmileID.xcframework.zip",
            checksum: "747778a3bf8285c4cbe00e230e1e8b05d45191f424525e67d7c5f9b6d87f7b61"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707095826.28857714731/UseSmileIDBridge.xcframework.zip",
            checksum: "4291938689127d1a383c83a44bae1caeb5401b18f72dcd036162379100adf8f4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707095826.28857714731/UseSmileIDVisionFace.xcframework.zip",
            checksum: "ac46d37c2cac33853cb544eb55bbfb47306914716d3165c126d8892c4a182b57"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707095826.28857714731/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "777325002e683be3bdeff49bd0d9067647205f78480e204cf614bd8bbaae068c"
        ),
    ]
)
