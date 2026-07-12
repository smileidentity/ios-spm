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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712004024.29174079795/UseSmileID.xcframework.zip",
            checksum: "1627b011e48b8e9f882222caf33c157a3a9051ded6adc26b10082780ee56d213"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712004024.29174079795/UseSmileIDBridge.xcframework.zip",
            checksum: "9ecd23a19d4aaabcea5631d87c473d03a4d221439a0de2da6e67b2f8ee5e06b1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712004024.29174079795/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e1b68bcb79018c16e45fa4857f66366ffb249a4521dc90083618d234bd0d5b09"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712004024.29174079795/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "b60cc24d7987ca3bd319a67150ace799862caa227e1f1b4f2a85b7564abac482"
        ),
    ]
)
