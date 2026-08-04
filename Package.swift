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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804121850.30908192305/UseSmileID.xcframework.zip",
            checksum: "81fb1b788b6ad85e322b2b484d4dc10893a7cdfb263d15e611ba1a71db3d87e9"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804121850.30908192305/UseSmileIDBridge.xcframework.zip",
            checksum: "50a735c1d250a2fd6332323d010745d1eb7ea51411f88f7825bbe2896e60f6ce"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804121850.30908192305/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d44da85b9f97808c6401841381aa0b54b4b3b6023344ada0484947a2e0cbd47b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804121850.30908192305/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ea80cbaef132477d55cca388687c5d6407c3e3e717266bceac9aa15a33b8e0ae"
        ),
    ]
)
