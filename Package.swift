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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423180131.24850742327/UseSmileID.xcframework.zip",
            checksum: "dbfd0fb695c6b8e5c804e2d0efa2327972d381b63981be7b87588229846cdeb0"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423180131.24850742327/UseSmileIDML.xcframework.zip",
            checksum: "e80045f0d7914d8d467024d3a190f4d11c45ff354b37f07357a06f505f42ab5c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423180131.24850742327/UseSmileIDVisionFace.xcframework.zip",
            checksum: "655204ee10b5d94b0394a57db0fdd4f6ca59201a2e3f8bee99fb5ab01b224af1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423180131.24850742327/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "3674116d9ba37b7d2f89d215d20c81cd1559a6e8ec1742406004e18f55dc224e"
        ),
    ]
)
