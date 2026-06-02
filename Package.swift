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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602121148.26818853801/UseSmileID.xcframework.zip",
            checksum: "d48826f97145443777dc7c20b361d3462fe21148c5ae6cab3f3ef2916fc4a38e"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602121148.26818853801/UseSmileIDBridge.xcframework.zip",
            checksum: "f6f58d4a29fd77283b0ee170612814bccff42c1e66e36c0469d6b784fd5ff8ff"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602121148.26818853801/UseSmileIDVisionFace.xcframework.zip",
            checksum: "86cc2984ac7ade3147808779e7776c6e5a670493f8f8c039e95dc880298d9a5e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602121148.26818853801/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "5b35a74490a52ea6ce4c348a302cf588b8467dbe68b511a057d4dd617edd9625"
        ),
    ]
)
