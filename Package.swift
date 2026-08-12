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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812125833.31598688326/UseSmileID.xcframework.zip",
            checksum: "a61129242b97074f77706426d05c0b2c90b9c59a00cc57f79d79284296dd0904"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812125833.31598688326/UseSmileIDBridge.xcframework.zip",
            checksum: "97faff39effa569554c0cb673d490eec72bbcc7abbaf40436d11502b18f1d0fa"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812125833.31598688326/UseSmileIDVisionFace.xcframework.zip",
            checksum: "fb3af05e6e939266580628016c1eb94a1f2826fc180de2df0b81433c7cec00b4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812125833.31598688326/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "c3e1f4cfab8e7c315ab7060add126684479cedfc12a799c91f281469612d47d1"
        ),
    ]
)
