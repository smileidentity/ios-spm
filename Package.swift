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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519153104.26107473660/UseSmileID.xcframework.zip",
            checksum: "44a661c1132e14753ce9c14b6a6886c15eb75ac7b15add5ec5a0bdc472babf29"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519153104.26107473660/UseSmileIDML.xcframework.zip",
            checksum: "27a8ff4084dc86a9072469ba0b3218f143a0a308c4db4518a970ab8c20c616d3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519153104.26107473660/UseSmileIDVisionFace.xcframework.zip",
            checksum: "951938fc4d5a3f492d1f25da59ec776534b4cb058867c70e3a598fd3c8565e6c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519153104.26107473660/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "0fe3e0a4e02441a00335da61350290af83b80096cb5407ee7265712ee75a2518"
        ),
    ]
)
