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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424075407.24878671480/UseSmileID.xcframework.zip",
            checksum: "a822e848f15bbc46789d5f270fd2bcb71dae5aa354078dc966b4b79cda9cb632"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424075407.24878671480/UseSmileIDML.xcframework.zip",
            checksum: "314f884603e89474fafb1e99bec303bd54a98f73b11c1a90c74138a9cfa9724d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424075407.24878671480/UseSmileIDVisionFace.xcframework.zip",
            checksum: "a499c653667dd153b3f71e5be3fe5fd8e00b3496d9d30ff4ad5bda42efdfb650"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424075407.24878671480/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ba1b81642485a8ae32ca73dcc2c489397f49613c35b92c411e29b0c0d766b661"
        ),
    ]
)
