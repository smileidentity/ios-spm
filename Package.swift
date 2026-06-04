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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604104735.26947032000/UseSmileID.xcframework.zip",
            checksum: "d97ad196b02c51564e415c054f5cc5692d338726681bb0b4c1666861c60b8c1b"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604104735.26947032000/UseSmileIDBridge.xcframework.zip",
            checksum: "7d28a93cdcca7c743a31f2388d01c0956d17db957ebf185909f898e44ecc82e0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604104735.26947032000/UseSmileIDVisionFace.xcframework.zip",
            checksum: "776d57b8bffca90948ce003094066684e6e44d0b16442e014d00d6a924629325"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604104735.26947032000/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "bb79219fd630b8310d4df14a5a2ae4cf58db2b6db2c7ea86681c459dbf921fae"
        ),
    ]
)
