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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606073250.27056316075/UseSmileID.xcframework.zip",
            checksum: "8a6326cbfad71d07aacc655f169f53b41cde0ae935fc830e398cc54c88162ff6"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606073250.27056316075/UseSmileIDBridge.xcframework.zip",
            checksum: "244f3a6c1510361260ed7bc06e92e0b2a649530bfa777500dee5a0b24eea085e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606073250.27056316075/UseSmileIDVisionFace.xcframework.zip",
            checksum: "83cc1008820351063b95ac12bd0c3226770d89206af2488e58f06129dc1d05db"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606073250.27056316075/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "6e9d234e42b5154367e827e055bb20b1840fc9766634f03a0549a9cb3a9fa4be"
        ),
    ]
)
