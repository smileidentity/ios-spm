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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714180539.29356204642/UseSmileID.xcframework.zip",
            checksum: "6b451a19d641e0eaa71aba79e5d81d4d7f18d8b14777eff6bc5380e0ea6d1ea9"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714180539.29356204642/UseSmileIDBridge.xcframework.zip",
            checksum: "ece5596eed04e5edd8c762aa28e72a9dd55040a95d1d87ce8fb623ccb40e5698"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714180539.29356204642/UseSmileIDVisionFace.xcframework.zip",
            checksum: "7a60c4fe777aa86b72c9b599408b774dd86790e464bf42bfee310b5cacf3cb0a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714180539.29356204642/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "715d2bd6ed3cb29be054fe5ebc0e23c00228c41d77ded4650bb9b92ee97b9197"
        ),
    ]
)
