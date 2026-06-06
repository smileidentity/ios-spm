// swift-tools-version: 5.9
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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606054138.27054049967/UseSmileID.xcframework.zip",
            checksum: "62474918fab135c482207a1f47ddd3865d61f879cf23357c22ad608f6831cb4b"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606054138.27054049967/UseSmileIDBridge.xcframework.zip",
            checksum: "a297cc648f03e137b4af091aa2b6937a4f3fae00fbac76af833f3a498dcd9c2a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606054138.27054049967/UseSmileIDVisionFace.xcframework.zip",
            checksum: "7f86ad65d832d10fd57d51d3185668b8089f3a7550345c1bbbbd8e5364374cc6"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606054138.27054049967/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "fa0f5a5e937e6d481f2af0be5e52eac4069d5ed249911ad138a5378316a7481f"
        ),
    ]
)
