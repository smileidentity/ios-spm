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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628192804.28333409082/UseSmileID.xcframework.zip",
            checksum: "7022928ab21e061c1a8c4bed3cdc7588a7e18b1f517e6a4b949e5f5acdd6f873"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628192804.28333409082/UseSmileIDBridge.xcframework.zip",
            checksum: "96dcc3ded262d79271efa93d97529f894d0167fe075781b06bffead590c9b18f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628192804.28333409082/UseSmileIDVisionFace.xcframework.zip",
            checksum: "0014399a9d225b91529a5ccf7cbf9be16d906da1e3b80a06d9c5a9a925180193"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628192804.28333409082/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "026f949109a8054bb49a2f5ea0cce8d4e871da30e668d97caba5a98ab0e56e8b"
        ),
    ]
)
