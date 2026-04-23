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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423184813.24850834395/UseSmileID.xcframework.zip",
            checksum: "647944754a67e3121a4aff171cbce0d99418918783b5ed5893b4445251784209"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423184813.24850834395/UseSmileIDML.xcframework.zip",
            checksum: "672cbd011044a5ce927ef85fd922c9d6ddd7e9677a6c9d905150cdf1755062de"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423184813.24850834395/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e4657f7e89fa5f4db30d4cbb5913e92584af4fa09ecff2d6a813c633d6a3abc5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423184813.24850834395/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "8deea1689ed42731437b769038f5af9bcd2367efb310de8b46fddd2266276edf"
        ),
    ]
)
