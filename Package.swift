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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424202400.24910182667/UseSmileID.xcframework.zip",
            checksum: "c005d689caaf939da3deef7896a389c8530a8e38fe39ca86374ef8ba18dc5a92"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424202400.24910182667/UseSmileIDML.xcframework.zip",
            checksum: "14537abe31bb5ad8d8ef3677048e7ff04ccf56dbe1c384467c9609e4b6a1a6ea"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424202400.24910182667/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e915f7de8e7075174f2210879876e95aefc7100f908ec1f19d09b51e2c9011ba"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424202400.24910182667/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "681d8495ff2b401df21d94638978432e1b7b2bdab00464909836b935e2176a6e"
        ),
    ]
)
