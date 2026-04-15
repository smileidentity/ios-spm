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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260415150139.24461908600/UseSmileID.xcframework.zip",
            checksum: "5ffd2601b9fe52eb12cf9b8080843850446d25e1fceebe609a44e975f6459b84"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260415150139.24461908600/UseSmileIDML.xcframework.zip",
            checksum: "07af81a18e7f25869c9e5decd420b56ae78090754fd1158c0c83e9fe619e046d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260415150139.24461908600/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e12a667f4d3f539eed7e148c88139b27b32b8d958f3389ca9eec2dc9a6cbe2c0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260415150139.24461908600/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "8c6106390a37b70be3621ffb73a0638e7ed524a7170881aaf27b042f052c398e"
        ),
    ]
)
