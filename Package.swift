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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424133048.24892143879/UseSmileID.xcframework.zip",
            checksum: "8a806a5e8fdade74ab279db2f1964a14cf87b6a7133ab2da573fc8a8fb04120b"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424133048.24892143879/UseSmileIDML.xcframework.zip",
            checksum: "f8f8d66411ff5229ff76581e1ee7ceae05a83cee5938d57bddba9e8c1e7029fb"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424133048.24892143879/UseSmileIDVisionFace.xcframework.zip",
            checksum: "10233105d80a6393d1a6ab5033b94db112c66f01df14e6a02b163fc01bcb34cc"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424133048.24892143879/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "411a25e2b8c0f9840690fde5f0ab1e4abe63d8b0e1a3cb8f2ea3bd69c77be46d"
        ),
    ]
)
