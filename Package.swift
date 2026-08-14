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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.2-SNAPSHOT.20260814135901.31806908739/UseSmileID.xcframework.zip",
            checksum: "a430a80820e56347af6decb3ad64379161f01ba58181cc444d263d4200bae340"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.2-SNAPSHOT.20260814135901.31806908739/UseSmileIDBridge.xcframework.zip",
            checksum: "93b3a4410e6f593efd1d3ae6cf28032b251177013b99815fab754b6ea6b87111"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.2-SNAPSHOT.20260814135901.31806908739/UseSmileIDVisionFace.xcframework.zip",
            checksum: "764451e907dd18e2e81f2ca7d4b7ea984669f86306e1cef171ec501766fce01f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.2-SNAPSHOT.20260814135901.31806908739/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4cb2f70dcbaf7620ed9a261677cd5b0725aab936211ff2b669a4f2e7352b7353"
        ),
    ]
)
