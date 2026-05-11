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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511160423.25681761803/UseSmileID.xcframework.zip",
            checksum: "d010e6e65b90f5f6b31b1de5397487133ac93bf9430968da10e8107ba825972b"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511160423.25681761803/UseSmileIDML.xcframework.zip",
            checksum: "70530fd458074c4b58bce1b8e1efe1c861d80af2f0fc3855e720d265eb3fb43c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511160423.25681761803/UseSmileIDVisionFace.xcframework.zip",
            checksum: "0bb09dbab72ced1dbbe28d607ae166d93fafd3726647b24c13c23b741a6f6913"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511160423.25681761803/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "23f03310d77a70f08e1f3a9be108c7eb9424d9cb5b79e33e7ee85f10ebb6f766"
        ),
    ]
)
