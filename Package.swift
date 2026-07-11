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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260711055749.29142039938/UseSmileID.xcframework.zip",
            checksum: "9f5badbe17292f480e16cd5859abb54b791226909d8db5f0efec4025efd585e4"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260711055749.29142039938/UseSmileIDBridge.xcframework.zip",
            checksum: "a59235b1aeec7e85ba3c9c11e0575a7ca9968238f6ee3d8b86464532f8569583"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260711055749.29142039938/UseSmileIDVisionFace.xcframework.zip",
            checksum: "4767e5fce77cb893157bbccfe950a4b17f50383464492f114d99dfd4ea220286"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260711055749.29142039938/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "7e12c30d4ab6e74930980847e711e78205f2a237e7a525866107fb3cc3ecaf8e"
        ),
    ]
)
