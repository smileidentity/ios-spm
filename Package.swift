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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260702115919.28588230898/UseSmileID.xcframework.zip",
            checksum: "dbd06cd1e5e54438ccaf294a3072328a8204659538a2599a5a5675c424506dcd"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260702115919.28588230898/UseSmileIDBridge.xcframework.zip",
            checksum: "ec67ae70594dc97856079e4d6e1c04d417bb992b23560f9412b53d8264fb1b4b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260702115919.28588230898/UseSmileIDVisionFace.xcframework.zip",
            checksum: "60522e3aa0222bbb8c6bddba2b68da6732bb9191fbcc6031e705736a569d69cd"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260702115919.28588230898/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "a23c72d696092460b6fd121c543117f44ab1c19599ff37af61817fa28ae94650"
        ),
    ]
)
