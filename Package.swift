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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260512113318.25731720510/UseSmileID.xcframework.zip",
            checksum: "77d8996b82a6e24ef434531d4315251ca87da016bfb6f18ee433f17a12c9e7e9"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260512113318.25731720510/UseSmileIDML.xcframework.zip",
            checksum: "29e75ca86da57996bfcd28eb1be38189fa7ee6e2bde617d8d611ef2a07509b44"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260512113318.25731720510/UseSmileIDVisionFace.xcframework.zip",
            checksum: "ddd7b584dedcf0b9cb28664324e293bee8d6ff38acd611c7fb843d64c884077b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260512113318.25731720510/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "93eb61ecbad73f7085e23a818f427e407f9ceb7238349e1ca256d4860185cc54"
        ),
    ]
)
