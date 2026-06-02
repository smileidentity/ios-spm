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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602161833.26832936245/UseSmileID.xcframework.zip",
            checksum: "1df05c7729ecf212c2aa6b74f45423bc40ef6c56ff8901de91e20fe198ff4b80"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602161833.26832936245/UseSmileIDBridge.xcframework.zip",
            checksum: "04f0398f3b1153bc45f1457c9952c2fffdd4683cc427405e43ab51300950c4c4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602161833.26832936245/UseSmileIDVisionFace.xcframework.zip",
            checksum: "2457322e698f3f8a9ec5c8c0258875a45efbd5f4b646a245630d8b9edc996996"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602161833.26832936245/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4c2d0bcc56c46b7ccf24cc6208c49be02e87071ec2ceb8be0c40e0186f33b5c6"
        ),
    ]
)
