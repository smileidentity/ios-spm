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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630075415.28429084318/UseSmileID.xcframework.zip",
            checksum: "79551f7ae0c266877b03be4694bf4dc81d3fdc8fc18472c4f75b021d9ba22a1e"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630075415.28429084318/UseSmileIDBridge.xcframework.zip",
            checksum: "c3714d8158ea8f2e9c1b4f9b16663496e5bbd51b05c8f1ae55b5a8d6d816d7be"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630075415.28429084318/UseSmileIDVisionFace.xcframework.zip",
            checksum: "8686e2c1d3387249ab554da2aad34fd795c02ae3261f8c961cf382ca321a8ce4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630075415.28429084318/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "f12eb5e321ff7bc970201e0a3a4f7ac53fa4e3ef8b35d1abceb7690673ffd23e"
        ),
    ]
)
