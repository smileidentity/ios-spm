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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731121300.30629522519/UseSmileID.xcframework.zip",
            checksum: "06ada1911f838b407cfc70a844dcbbb189b73ab2d228573425577b31929d40e3"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731121300.30629522519/UseSmileIDBridge.xcframework.zip",
            checksum: "b824ac79bb54a0e98496d6ee3f1b76899866b2c69861fdbc2f7cb08b26d1c906"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731121300.30629522519/UseSmileIDVisionFace.xcframework.zip",
            checksum: "1acfa24ab3a184616765d4a5285387b2661d2843c97c402307d5df085569ac65"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731121300.30629522519/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d33dc04d77ad521e354e779184a9f0d8eae604a3f5e880cf817965087530cf72"
        ),
    ]
)
