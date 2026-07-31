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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731091317.30618889837/UseSmileID.xcframework.zip",
            checksum: "9f80ed0242177ea65f1b4e9a556e94fcb85aa482ceac91ca7975ef6b0f856382"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731091317.30618889837/UseSmileIDBridge.xcframework.zip",
            checksum: "9fe2447d37464f0f464fd022f843d4be0523760059ad8b9a4b803fb00649eabe"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731091317.30618889837/UseSmileIDVisionFace.xcframework.zip",
            checksum: "dd232fe9d195edefff1f3108341d3103dd2cc038e478719ef50e00e6a9182307"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731091317.30618889837/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "0e05393e56e19107caee4d43e556a3f166f48ccc454617b3fccba86c315c7178"
        ),
    ]
)
