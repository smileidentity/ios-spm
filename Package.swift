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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602191820.26842484296/UseSmileID.xcframework.zip",
            checksum: "4b80f43dac1687f130cd9306d4b7d955e876a683e16c1ef97df210afed7a34ec"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602191820.26842484296/UseSmileIDBridge.xcframework.zip",
            checksum: "2941f4a1d1f2586763835529ee63b5f26ea7edb30a822438c50f9e7723d7cf99"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602191820.26842484296/UseSmileIDVisionFace.xcframework.zip",
            checksum: "78b43c8ffe598c84e9536ae6a23e53ad10e602744b7a15cfcc61c41cae4bbe22"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602191820.26842484296/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "783c68d232f6fb3bb4f5f3b842e1ffe8572b0d815feae75f591177f9a7ad3a68"
        ),
    ]
)
