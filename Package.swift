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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613113741.27465675215/UseSmileID.xcframework.zip",
            checksum: "ad1bf43b749f46a1fbd8b0755242366212632cfdfe4abbb148e6bb09b293c957"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613113741.27465675215/UseSmileIDBridge.xcframework.zip",
            checksum: "4933949e4a1208c1512b1e158480970f96b1d46b2973a10c3f42c73fa837ace1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613113741.27465675215/UseSmileIDVisionFace.xcframework.zip",
            checksum: "7ea6550346a12e9222e86f520f6c731d09ee8fab5648e96bd943b873e4a93ed2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613113741.27465675215/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "6fa22d79200845a05903b929a860d7b49d71bca526d7d9b0341e2a4b81d0312a"
        ),
    ]
)
