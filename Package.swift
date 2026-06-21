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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260621114733.27903314775/UseSmileID.xcframework.zip",
            checksum: "eede30c307ae961e08384470ce18881ee63406cc6691d9fa2ce33256b9003ad1"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260621114733.27903314775/UseSmileIDBridge.xcframework.zip",
            checksum: "badb8d1a23284215ba60a527769fbe3cff72e8d1b43ecdb957398f271415de24"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260621114733.27903314775/UseSmileIDVisionFace.xcframework.zip",
            checksum: "41d4261d5a3d83e46f862e96395900227af0ca78aa8ac3de45e9b087d9dfd1ca"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260621114733.27903314775/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "5ed587b8d7409d5bb4bd619463b78e72f9c05c1126fa02997c99fb9d2e8742a1"
        ),
    ]
)
