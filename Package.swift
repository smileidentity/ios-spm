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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613120516.27466273640/UseSmileID.xcframework.zip",
            checksum: "293ed3fac50aa740130401246ddecb038222fd686e448c6109710d390d79ea5e"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613120516.27466273640/UseSmileIDBridge.xcframework.zip",
            checksum: "824ede0104f9490ea1e5e853faa576b0c90c27af66062b18295dd8a325edccca"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613120516.27466273640/UseSmileIDVisionFace.xcframework.zip",
            checksum: "35df10c718ccb1e3d6acfec0f9920bc9fe12260b9ae0ae4df8ac1567d78f7127"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613120516.27466273640/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ba3daa67156c82c8064a811d5342b76c93a3592d01bee6c334182629bd2719ab"
        ),
    ]
)
