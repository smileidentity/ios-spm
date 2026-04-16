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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416184615.24527873349/UseSmileID.xcframework.zip",
            checksum: "44ed2e6d743918d8031c96370674ca7fcc91a9414ef171aa71ed21f2a230fd32"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416184615.24527873349/UseSmileIDML.xcframework.zip",
            checksum: "dd50ad7faf708e34ad6ed8b95eb36d570957807d6519050d541074c08f416cdd"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416184615.24527873349/UseSmileIDVisionFace.xcframework.zip",
            checksum: "4055ba2c28832c06766fe70be3d560098f4460daa65930f175e9f7890220c51e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416184615.24527873349/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "5aef8f0451b9a3e49c56799f5f3d2a1b72f9ccb62e4c44acbb95aeb6d84266f7"
        ),
    ]
)
