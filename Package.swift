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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.1.0-beta01-SNAPSHOT.20260622114000.27949959941/UseSmileID.xcframework.zip",
            checksum: "5cf71d4cc343a53744c55a8cd98498c38e790f42b8b13bab7bc6b966c7903c21"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.1.0-beta01-SNAPSHOT.20260622114000.27949959941/UseSmileIDBridge.xcframework.zip",
            checksum: "12617033014e0a5cd90c61893c769207edd1f84afedb081e96306f024930dfd2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.1.0-beta01-SNAPSHOT.20260622114000.27949959941/UseSmileIDVisionFace.xcframework.zip",
            checksum: "16cbffdcf0c0cae9fb46d4263258e8a98f64f472233d623bc7fc70160131ea0b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.1.0-beta01-SNAPSHOT.20260622114000.27949959941/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "274ee9dd57c5b9ffd0b70488ca5cf0a787e3402182eedf1efa0c00d38819eac2"
        ),
    ]
)
