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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260616103430.27603005683/UseSmileID.xcframework.zip",
            checksum: "976291eb58db42dff14075725a2c46bc317c3988ffe1e9803f073ed197bf3ab9"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260616103430.27603005683/UseSmileIDBridge.xcframework.zip",
            checksum: "4c7c460f7cf406f89ab188705e7838ccf6266db5ff4851dffa198d432d49093f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260616103430.27603005683/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e23234e44eb8e2c270bb1ae36ddb66702cf38bb3e4543f93525f86043f3be2e4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260616103430.27603005683/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d3c4c5d36fef370cda30cb4aa82fa494e326118227d8e3a8ab15006dbbe18d14"
        ),
    ]
)
