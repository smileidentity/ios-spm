// swift-tools-version: 5.9
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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260616103846.27611730870/UseSmileID.xcframework.zip",
            checksum: "4d0bdb02f18800a15a6b4e188c7ed5d4a99dbcd215de33ae2e75568572e62602"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260616103846.27611730870/UseSmileIDBridge.xcframework.zip",
            checksum: "75be685f182672c6819f64a9b6500c6c3e9fbe2d89f4dfe4dabde59bd0df7282"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260616103846.27611730870/UseSmileIDVisionFace.xcframework.zip",
            checksum: "3d73bfe11dbf5097e4df0448f11cfb2f4a949481299f7533651064b50101751c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260616103846.27611730870/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4f837f3cf9ea5beb5a1214206ba6122930a99eeaad996ca8b84f5250ad353945"
        ),
    ]
)
