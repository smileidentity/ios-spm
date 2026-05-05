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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505182039.25394326940/UseSmileID.xcframework.zip",
            checksum: "2e55af76c6f12e3c9d708918bf4f5aa6b6c1d29f3fe9be7dbe8f26ba984f736d"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505182039.25394326940/UseSmileIDML.xcframework.zip",
            checksum: "ef1d7eb987ed0c8c77eea819387f71c2664694b7495d3619ad27f456b4427ca1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505182039.25394326940/UseSmileIDVisionFace.xcframework.zip",
            checksum: "feb2a6e66dfbe35f0c7fb59a3a669a062dcdfe4d112f3c5fbe5ad569b89235ed"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505182039.25394326940/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "cb7331e9bd0852a04100158cc8a333c7babb6bd2d4987738d2b0b1c6942eb99e"
        ),
    ]
)
