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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260715093608.29404869292/UseSmileID.xcframework.zip",
            checksum: "3186335d9dbf4692572a4c7ab16d632d005f5a61ee10a113babde7babb180dc8"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260715093608.29404869292/UseSmileIDBridge.xcframework.zip",
            checksum: "9722b9b3f707cd18fb50f3ba7d93cf7481c1bba6ead3edccbeda7d4ce62c5ead"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260715093608.29404869292/UseSmileIDVisionFace.xcframework.zip",
            checksum: "736d53034efc67c2755bac6f59b293b0667ee64c2cafab11c9ef2d48df3480aa"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260715093608.29404869292/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "6c22be985ef68dda11219ded9e9a2e0934940f4b1996370d8c2f8e046e34d9a7"
        ),
    ]
)
