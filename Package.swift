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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712004550.29174212500/UseSmileID.xcframework.zip",
            checksum: "148c585b944d9d610fd6cbddca69bbde6af682e39a4deed6de84339dcb4a9b97"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712004550.29174212500/UseSmileIDBridge.xcframework.zip",
            checksum: "972d2d7541c55c316efc906fb82e853464668beac94869700a2432264bb205cf"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712004550.29174212500/UseSmileIDVisionFace.xcframework.zip",
            checksum: "033217229ea3d9a130f8036eb229d1a1163ad369a3a8702ff34d82dd5959ab1e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712004550.29174212500/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "137fba4f089eca4863c439df1a8ddd00b7c7e88cedd8a661b748519f4b7620e7"
        ),
    ]
)
