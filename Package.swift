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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731082931.30616171000/UseSmileID.xcframework.zip",
            checksum: "b977e09aca3285dca1e28bb0ee8f344d7015d18daa0708864a8fd318ae45a5e5"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731082931.30616171000/UseSmileIDBridge.xcframework.zip",
            checksum: "2b527bf634b73b2ff490791208e31241552992af8f99fe2d6aee2bda5fb2b15e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731082931.30616171000/UseSmileIDVisionFace.xcframework.zip",
            checksum: "939393dd9ba545071783e5a2928ce69143042955057d7c00f70104736e07e5ee"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731082931.30616171000/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ebf66ecf360da19dd3edbcb2e1408c760e4fe61f8c4087ee30503db0cd2fdc22"
        ),
    ]
)
