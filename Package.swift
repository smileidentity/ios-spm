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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260518191517.26054920669/UseSmileID.xcframework.zip",
            checksum: "2ce12e4ad3882b05a68188323cdf25f5844498a4ffcc209b97c1d06882c58d29"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260518191517.26054920669/UseSmileIDML.xcframework.zip",
            checksum: "a63836f1bbb910ab9ba5c19ee85b0458018db1e681d39453529a601f521e224b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260518191517.26054920669/UseSmileIDVisionFace.xcframework.zip",
            checksum: "85a660094baf459119b38453b03544c4535cc18b79a9c832863f3633b7d19aaa"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260518191517.26054920669/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "1db3538a77ff6fb45add26b463252d5a6461cd0823ae3c57bfcf8b0b4a17c08d"
        ),
    ]
)
