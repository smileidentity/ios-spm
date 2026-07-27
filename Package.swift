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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260727130343.30268243347/UseSmileID.xcframework.zip",
            checksum: "696428154b9a537a0c84f9f3311e48fd074bcca2c16137805ab38173a4ee5004"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260727130343.30268243347/UseSmileIDBridge.xcframework.zip",
            checksum: "592b31dc923044d162490a97fa657a318fb8274d62d0f2ef983172766b79b6f6"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260727130343.30268243347/UseSmileIDVisionFace.xcframework.zip",
            checksum: "48128c26f12a059c2c7419988b7b42a9a2d7ce1489deff031b14aea5038017dd"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260727130343.30268243347/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "978d31500c04d418175a9a1f3448dc03889c20445bf93b933d647f1e0251bf7a"
        ),
    ]
)
