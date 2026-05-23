// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDML",
            targets: ["UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260523033025.26322324915/UseSmileID.xcframework.zip",
            checksum: "93836c6e3872a04fce501a2f9fb467293b1dccdcda736f1a761a23f865a8bfb3"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260523033025.26322324915/UseSmileIDML.xcframework.zip",
            checksum: "fdb5d15f59d02608d33a8064cea76319004d382e94345d41feeadd3c79cf353c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260523033025.26322324915/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d093643e58f984cd41a0477c2f8140d7d2f0d94aec9e4346b63d140643d11d1b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260523033025.26322324915/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "52f0c0838625dda9038ab4136c0656dca426d13ae22fc3d2b5554b22cc8470ac"
        ),
    ]
)
