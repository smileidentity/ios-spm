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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260430225224.25193272512/UseSmileID.xcframework.zip",
            checksum: "89d9ceb3b21e237c49217a1ee2cd2e3be226b11a9e5546c7e9dcdab932ca5e65"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260430225224.25193272512/UseSmileIDML.xcframework.zip",
            checksum: "1299bde70d2878c4697bf7c59c335ed8adf1def5f7554f39c0a4102b03647f09"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260430225224.25193272512/UseSmileIDVisionFace.xcframework.zip",
            checksum: "6417c51af4679bc1972660b17b4a707a31476d8d4232f0d1b874898b3469f5c3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260430225224.25193272512/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "064f89d0bdd58943af2435806dad2d4b994be765597cef6effe39e761a2d2929"
        ),
    ]
)
