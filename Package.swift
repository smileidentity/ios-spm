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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709113427.29015285719/UseSmileID.xcframework.zip",
            checksum: "4bd35e299667156efa3d11c6f54cac6dbeabe39016e741d31d2015bce2f32542"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709113427.29015285719/UseSmileIDBridge.xcframework.zip",
            checksum: "cb44f896a77585c4c3c93f7b59840e156c8ed2e800b35139868dd7a33c0e7675"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709113427.29015285719/UseSmileIDVisionFace.xcframework.zip",
            checksum: "24dcda1df04a8f336a48b5c59b457b004866b4cabe9c4ec03f1d35f3d4e9f7c6"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709113427.29015285719/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "477a50afc27a230060f91eb48ac1f255d9f832e3481be513457afc3ba047337c"
        ),
    ]
)
