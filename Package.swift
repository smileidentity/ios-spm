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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260514143854.25866277833/UseSmileID.xcframework.zip",
            checksum: "0700c4c5502ca0618f8fe9e6e41292c4e4926e3e995e9702590835f871831cf2"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260514143854.25866277833/UseSmileIDML.xcframework.zip",
            checksum: "b36c234e342d0dadb80e4203881942ac6fd85e7870c95a477d1ab88fb5f48d37"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260514143854.25866277833/UseSmileIDVisionFace.xcframework.zip",
            checksum: "785a0d6956f6744d7c5b89d8d0a1b9223a52e070e53ea052602a41712fa2a934"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260514143854.25866277833/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4577f79e81fd4a2ae7b03241dd28c88ce8651815f859bdf8f7710e8fff68fee2"
        ),
    ]
)
