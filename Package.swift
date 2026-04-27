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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260427100458.24988825551/UseSmileID.xcframework.zip",
            checksum: "6d7e2f35a34cd37003c9edf3fae879ff9e877fcaadf9dda7aea209bd32db2261"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260427100458.24988825551/UseSmileIDML.xcframework.zip",
            checksum: "0952239fcafb441e0cd49aaa3a82f5c7c109ce5f1cc7e53b367719963948b358"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260427100458.24988825551/UseSmileIDVisionFace.xcframework.zip",
            checksum: "a2c7adcb7bfd6e3cd52f3908936fb94f25f92d619943150c41c76dde0651f42d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260427100458.24988825551/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "bbeb06b16c4841d8e2e0abdcc43fdc975ae5dd68bbb03efe36cfda226d53e675"
        ),
    ]
)
