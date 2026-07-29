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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260729105833.30445503206/UseSmileID.xcframework.zip",
            checksum: "bef37d66dee3a453f68321272d057f1642002e028fbc1bce1e755d24672871db"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260729105833.30445503206/UseSmileIDBridge.xcframework.zip",
            checksum: "9cd4f1ddc31ba8d06feea0627bf7f895a6673ccef955a3a844b4e115039152d2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260729105833.30445503206/UseSmileIDVisionFace.xcframework.zip",
            checksum: "1c607714847795988a4a4b7407de978ad52307b8e446dc9fd9f6506be7d1e703"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260729105833.30445503206/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "670c16dcdc440d23049633b0f42482df71c4773cc406c7f68bdb580774e8584b"
        ),
    ]
)
