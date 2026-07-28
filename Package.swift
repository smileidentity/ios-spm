// swift-tools-version: 6.0
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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728112459.30354437566/UseSmileID.xcframework.zip",
            checksum: "14adc1e46180b8e870b637bdbf8359a08e10e40b3ac634f77775a8732d37ca84"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728112459.30354437566/UseSmileIDBridge.xcframework.zip",
            checksum: "39bb9f8aae43c6067668414a6403da4f5768d7c3343dbb7ed2f9c98a17c45949"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728112459.30354437566/UseSmileIDVisionFace.xcframework.zip",
            checksum: "434b182c6c67e716b017e0e9e28022f400ee7d9d3d87e629cdb4275b2dd2f603"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728112459.30354437566/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "46462e8bef5f2f04ea2142d975fa3093600bbe1673ffeeefb4cbca42fcbfd00b"
        ),
    ]
)
