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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260530104228.26681785070/UseSmileID.xcframework.zip",
            checksum: "ade1dca87e4caa4d173336fcb03d88208845d7fc311fa06dcb94d608fb18d183"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260530104228.26681785070/UseSmileIDBridge.xcframework.zip",
            checksum: "ab09b550f606488b109ccdd53e8ed7b3975d6a572e9d7ad5021d9cb74e732c56"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260530104228.26681785070/UseSmileIDVisionFace.xcframework.zip",
            checksum: "762d3abd6b6aec7f57f4d4a09049443fb797a2379c588ec72e71fadacd7abeff"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260530104228.26681785070/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "7154dea3d25337c1589ab3ab890789a7e042e7026be510c3cfcf56141a6753f4"
        ),
    ]
)
