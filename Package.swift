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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615163747.27561297322/UseSmileID.xcframework.zip",
            checksum: "817d37512951731a81f3e6229e62c80bdf41d2e3b5031e3c51de1c785eb8c68a"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615163747.27561297322/UseSmileIDBridge.xcframework.zip",
            checksum: "baef7279ef903e795a2ad5c0a31f8ead2dd1a74698224f0cfcc4a695a23e3845"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615163747.27561297322/UseSmileIDVisionFace.xcframework.zip",
            checksum: "1b8c55ac618279d3150722adaeaaca46b9e0fc513968d095e2c97233b4e9f31b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615163747.27561297322/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "44c8def2ad52af9de43d4a1fe3dbb06ce4c54068da67beca7af8e9f340cbfe33"
        ),
    ]
)
