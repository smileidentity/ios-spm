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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260807182834.31206737043/UseSmileID.xcframework.zip",
            checksum: "bbcb6312d0216460def12d7f4fd9b3900da2b4312f11cebc02ab5e5833623563"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260807182834.31206737043/UseSmileIDBridge.xcframework.zip",
            checksum: "19b45384d20e11da5e3f96b7e505a984f7bb435b43d53876f0aecce38bdd9645"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260807182834.31206737043/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d21bff72512e7dd062c7718430aff52a7550e2a2304a8288d7c297ce03e1df38"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260807182834.31206737043/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d843620a10a865ed849c8810747a000f152366a8d5792b56863837042f8f2b09"
        ),
    ]
)
