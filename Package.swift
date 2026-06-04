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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604111030.26948098656/UseSmileID.xcframework.zip",
            checksum: "894e8dce69fcf02922686a169af92261360b2d8ee5a4f7238dbc0f4507c35c93"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604111030.26948098656/UseSmileIDBridge.xcframework.zip",
            checksum: "681a809617224b62b92129258f411d49de5256306990b209138ac0f491af40dc"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604111030.26948098656/UseSmileIDVisionFace.xcframework.zip",
            checksum: "5da94543de9a61059f44efa15a3e3cfa0c9d7fec48600068bc91ef57ea067925"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604111030.26948098656/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "f563df0df6135baf41996e3d29d5f5d09bf5098d3e26399d2f4c2963b714f55e"
        ),
    ]
)
