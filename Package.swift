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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260729141603.30459709528/UseSmileID.xcframework.zip",
            checksum: "592c9c4340230e9678070e7754b81f84246450e64959513d62848f02d2a60fb2"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260729141603.30459709528/UseSmileIDBridge.xcframework.zip",
            checksum: "57f5a8aeed16482516e6eeddaf5fbef67f04955f6d53d482df11df464848f397"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260729141603.30459709528/UseSmileIDVisionFace.xcframework.zip",
            checksum: "41fc7fa2ecc5900a85efb6cc533cfac2879fe0180a83afbb61237023655dbab6"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260729141603.30459709528/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "a60ebb0e6b9fe2c3508c7a56df92f07f29976fbeddb26469375610c2f102fb08"
        ),
    ]
)
