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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260716194335.29528860039/UseSmileID.xcframework.zip",
            checksum: "a64555756153c4f44ac51c5e6c7649320c5e5a1418847f238dc50b633695ffc7"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260716194335.29528860039/UseSmileIDBridge.xcframework.zip",
            checksum: "96b1a9c50d8eb563e8df6171ee6ae0a62f37c9d009b90d23244e2303172e7b39"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260716194335.29528860039/UseSmileIDVisionFace.xcframework.zip",
            checksum: "191d7c4219ffda6ed9cb825aab39fed9de98796c462cb26754968e82e1a40324"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260716194335.29528860039/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4fcfb3bc1c796e393761927fbeb2abc8ddfcb4b7399d65da506027065c074cd3"
        ),
    ]
)
