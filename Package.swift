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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628144522.28325833380/UseSmileID.xcframework.zip",
            checksum: "24204db5ebaaa553192d5d78a7041bb80bc6f3105e61d2f2c72956f7a59a69da"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628144522.28325833380/UseSmileIDBridge.xcframework.zip",
            checksum: "e2fd3b3ddc834c7cef4653190329f1936ff3d6be53a40caccdf5aa6bb73207af"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628144522.28325833380/UseSmileIDVisionFace.xcframework.zip",
            checksum: "5410fdd233c73b58e4bf661924ae91cb5994ad4366d3003ec783222f6a1ba871"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628144522.28325833380/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "10dbcca279284d71d48260de4ee6bb87a8d3d967c115aa0cecdfdc92a94801c1"
        ),
    ]
)
