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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402122647.23900297564/UseSmileID.xcframework.zip",
            checksum: "b71eb449be20856b0918a4cb629186d8d945c22c72f9afb730cec879a505b09a"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402122647.23900297564/UseSmileIDML.xcframework.zip",
            checksum: "5abba3f809d86c640476e2c6f267982962776fe47af51354608beaca7e921a86"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402122647.23900297564/UseSmileIDVisionFace.xcframework.zip",
            checksum: "fade9c3dff01a0f84f3c7eec5bd3481cb7007b5fe8c2b2d463fc31acc54d6786"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402122647.23900297564/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4729c351dde3b6cb4e02c5b5dd46a64aa5d1d3fe466370b5e12556ffd82bd24e"
        ),
    ]
)
