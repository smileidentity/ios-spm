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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260427170052.25008537695/UseSmileID.xcframework.zip",
            checksum: "0d040651c74ab7a0de8c238e7dc951ec461769e0ba216c7f9906028be0f8a3a4"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260427170052.25008537695/UseSmileIDML.xcframework.zip",
            checksum: "0aea00021c82af41f4ee20f62c33483dc92630be14eb56afb0a4372093356a93"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260427170052.25008537695/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e0153563fcb2d36f6a25d4bc9b66fac4c6fac1f64917f75d223cfc692503cb33"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260427170052.25008537695/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d0b1cefbdfae536987989e34931aceb08b3e4f6f2254243eed2561593e07880d"
        ),
    ]
)
