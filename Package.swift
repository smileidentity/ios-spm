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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522141803.26293116307/UseSmileID.xcframework.zip",
            checksum: "3a912ecef2d80e36fd461dade13d13ae81c879462f0c9e8331e61fd4678458b6"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522141803.26293116307/UseSmileIDML.xcframework.zip",
            checksum: "846fccdf36fb3d7caa967f150ef1ceb71bccbff50e775fc9853fce8dfe0f46e0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522141803.26293116307/UseSmileIDVisionFace.xcframework.zip",
            checksum: "53980f73b1dabc4dae4cf0a6fc8a293fb995c93b48c0ea806d0f02844ea81500"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522141803.26293116307/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "b1157f2741130a877cf2cb3e644536ac555e8ec093025de27570da3d3d3576c6"
        ),
    ]
)
