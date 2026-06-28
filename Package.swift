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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628121414.28321877946/UseSmileID.xcframework.zip",
            checksum: "637113f34b3039920576965f1d81fc57fe0860be5cfe1d2469648947f201bb6f"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628121414.28321877946/UseSmileIDBridge.xcframework.zip",
            checksum: "15ccd49d0e82d012a13308be97e7f606339c50880f8bee910cbe9b53756680af"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628121414.28321877946/UseSmileIDVisionFace.xcframework.zip",
            checksum: "404bb2a3563aa47f3a17fc54c05160615234d575e64718ecfd25110e86a1c67c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628121414.28321877946/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "0eb608690623dccb2fa2488b2aeda0f9e7f6e537ba9e810478329ac7138cdbb1"
        ),
    ]
)
