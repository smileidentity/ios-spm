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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260422124227.24778856863/UseSmileID.xcframework.zip",
            checksum: "aecd8ad279c3bfe7b7f223fc329518250aaed387b09bee94e45e6203ef13052d"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260422124227.24778856863/UseSmileIDML.xcframework.zip",
            checksum: "26cbdcb44b5b8033a499f2055ff37d6036922e25069a0717e83e689249d07ba6"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260422124227.24778856863/UseSmileIDVisionFace.xcframework.zip",
            checksum: "b527ccbeb8ade4e9494359193d090562a65a5c329c52cb446cc5b1f1ae5bf213"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260422124227.24778856863/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "49318789ca5a78fb74a56e28c19fc9c7afc3459557b44a74fe8438dc1d9936d5"
        ),
    ]
)
