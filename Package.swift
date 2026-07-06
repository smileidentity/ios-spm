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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706135921.28797116927/UseSmileID.xcframework.zip",
            checksum: "34413e00ea3153da4381fb260c4467750178251f1de75a38883b19c8b6174590"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706135921.28797116927/UseSmileIDBridge.xcframework.zip",
            checksum: "7e77c13198fbf4421f53c17ebb903bab65be6fd80fb5bed4d039289706b44f8b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706135921.28797116927/UseSmileIDVisionFace.xcframework.zip",
            checksum: "eb98683fa0a2c0ca8fc99c400351ce00d6f475b9b289a608ce1ef6656c5ef524"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706135921.28797116927/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "7b15d705a262d3ece2b432af9cb05868b8c6d508a56d79ab43ab5a28ed2fa570"
        ),
    ]
)
