// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDML",
            targets: ["UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424095220.24883425879/UseSmileID.xcframework.zip",
            checksum: "b625496515c0e5cdd61a480c5b0139b7a720f1d4dc67af3bd0fbfb8fe883bca2"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424095220.24883425879/UseSmileIDML.xcframework.zip",
            checksum: "91b70aececa083eab8f59e71ef1498864ca4820220938b485b1dfe2d0c7f8f7e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424095220.24883425879/UseSmileIDVisionFace.xcframework.zip",
            checksum: "c9b3dfe895631d43ca665c479a220f202899790853bcd231556ac19fde9aa075"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424095220.24883425879/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "9b61c3367fa7018114424d33bcc1a4215898d46e5e846afd02c0a4f444a326bf"
        ),
    ]
)
