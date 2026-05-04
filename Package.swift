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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260504171317.25332530761/UseSmileID.xcframework.zip",
            checksum: "3e633642989d0674cb2af23450d4854fbe57b1ee6aa7e185f34346e976640f2a"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260504171317.25332530761/UseSmileIDML.xcframework.zip",
            checksum: "a985b1d261a3ae27cc4f4c8aeeda712bf347367ccab96aabc1369f77cd45cc26"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260504171317.25332530761/UseSmileIDVisionFace.xcframework.zip",
            checksum: "32e75bb3e8f2a9268b1ce718766a4cae0c9e7da005ef7fd3b603c9bb6b61c417"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260504171317.25332530761/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "1c72dec1dbf24ce4c8430bc1cfe49e01b1388f63ab70e065a177e7928a3aa989"
        ),
    ]
)
