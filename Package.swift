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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260414103616.24394346232/UseSmileID.xcframework.zip",
            checksum: "ad633aa70f272e3f77fc4e08ff561031cc9672cb8d80d5757a41cf75be99bd85"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260414103616.24394346232/UseSmileIDML.xcframework.zip",
            checksum: "7175f6fb34ae09adc3d4e341ceb7346098c9072657508b23a996578ab7b58b98"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260414103616.24394346232/UseSmileIDVisionFace.xcframework.zip",
            checksum: "c1cf4f837f1afd074644575174aa266b466427dd789ddf83d0b5d80b7b575e71"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260414103616.24394346232/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "7ecb49413e74380b0e86a644cfd412f53ee9e64af9761dd1670cdf6126ddc889"
        ),
    ]
)
