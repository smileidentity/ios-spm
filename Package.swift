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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260811160150.31509800007/UseSmileID.xcframework.zip",
            checksum: "aeff82c4f1273663689aeed64363b354ce52814d22c6843b27594a68aac9c55a"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260811160150.31509800007/UseSmileIDBridge.xcframework.zip",
            checksum: "e8821d71c8796c3977b11960b6e6c566714942693baef1be610954d02f43c80d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260811160150.31509800007/UseSmileIDVisionFace.xcframework.zip",
            checksum: "6a96ddb79e8613d1054446df022e7ab85139e6e51101b1aa24a79a98f9ddc180"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260811160150.31509800007/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "8dd8659907379c9869f98959f3433e43efa356527f51851a16ada8baa01ecce6"
        ),
    ]
)
