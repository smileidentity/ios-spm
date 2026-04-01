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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401121720.23848131373/UseSmileID.xcframework.zip",
            checksum: "7981ec33b54282bea484d09f035b67485e969549cf544e834413e83f14fe3f53"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401121720.23848131373/UseSmileIDML.xcframework.zip",
            checksum: "a04b59ec19d32664db11dd6df786ec492d26ab1d4a24ce4e648141ae50a1423f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401121720.23848131373/UseSmileIDVisionFace.xcframework.zip",
            checksum: "118f0e802e79624e4b571e277278055daeed8d0f416e63f341fb27584c48382c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401121720.23848131373/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "5fa9da3642b632ab208ec022d8bcb34b181cf63759af870931a890ceeef996a6"
        ),
    ]
)
