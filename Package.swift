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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511155245.25681124191/UseSmileID.xcframework.zip",
            checksum: "029106018e3b09dd2a33b14b964f7058e9746be659d63aeae7132be7719b7313"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511155245.25681124191/UseSmileIDML.xcframework.zip",
            checksum: "366f34666acd3dca93a2740e47bc6e4e3c3e5d49faa913cae31b300dfa1704d9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511155245.25681124191/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e5e68eccd4a1bf2567b0c65777792f453ecd32fa65b0fc875baa011c9fcc895b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511155245.25681124191/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "35205dc87f05ce5bb4339293e6fb505462a6f2da3d3890ce43a9ebf1f955535f"
        ),
    ]
)
