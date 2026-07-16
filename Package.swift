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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260716182620.29522979845/UseSmileID.xcframework.zip",
            checksum: "c850a061afbbf872e0df3570df6a6f04a251b27a0f9b35396c504ea2c1075b39"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260716182620.29522979845/UseSmileIDBridge.xcframework.zip",
            checksum: "afd374ffed01e68904b5651ede1b0d595deb95761275f5163b1a324680d961f5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260716182620.29522979845/UseSmileIDVisionFace.xcframework.zip",
            checksum: "421222676984784227a039f9e3a339d4f4f929998a8ba55f2065504c0284987e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260716182620.29522979845/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "0892f54a3d9ef48b2dc6cf5f6827e83f3fa712d9601bae697c14801aadbe01c1"
        ),
    ]
)
