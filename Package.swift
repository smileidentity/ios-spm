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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401123108.23848669030/UseSmileID.xcframework.zip",
            checksum: "20cbb72eef359da233a353eb2c4985abe097a784fd2903a51d7ba7ff86a15882"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401123108.23848669030/UseSmileIDML.xcframework.zip",
            checksum: "095ae0c84be5bc2e5a6a7a5b7a66ab0239051ff8554b7e10e8530964ff52616c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401123108.23848669030/UseSmileIDVisionFace.xcframework.zip",
            checksum: "339cdc90f13b9d9700a1f98c33276c4004dc8a1c86ea66ab81b6ff0afe6762d4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401123108.23848669030/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "e883979b801b50177d9d616e75878f2420cf414b6acac34af6661655d267e826"
        ),
    ]
)
