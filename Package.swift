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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606025626.27050659270/UseSmileID.xcframework.zip",
            checksum: "07d58a51ebc7ca746504c1fcf9dd1bd6da9e9d4db20b3f999cf14c8d42185792"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606025626.27050659270/UseSmileIDBridge.xcframework.zip",
            checksum: "47a35cd4f5458c550950cbca18724706e9532b3eb38a2ee13c87fe363de403ab"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606025626.27050659270/UseSmileIDVisionFace.xcframework.zip",
            checksum: "71f86ccf81bb77607b1b7a88cd6a0c7044be4de27e774d74bd166beefb8ba1a2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606025626.27050659270/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "3eb3a80e825e717de5072d694ce48cdb48261e1ddce40a8863a9a41afd84b53f"
        ),
    ]
)
