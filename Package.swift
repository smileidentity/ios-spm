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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730230620.30589211120/UseSmileID.xcframework.zip",
            checksum: "231fcbcbf6d53f6c69fbffce5fc76a73b4947655b2e6e5f25241616852b79419"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730230620.30589211120/UseSmileIDBridge.xcframework.zip",
            checksum: "bf1cc079fa708c62f8efde3d8d0380835c43d6da039b10de39d205c385c93270"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730230620.30589211120/UseSmileIDVisionFace.xcframework.zip",
            checksum: "83aac31579dec6b89c1383dedc9e7dc9bc785b1c5527c6a439a5bffb021c41b5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730230620.30589211120/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "e4cb520dff9b9de4f8e336a5bddcd4bfe5cd0205ab53ec2985e1333601a28a8d"
        ),
    ]
)
