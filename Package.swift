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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260807190947.31209864697/UseSmileID.xcframework.zip",
            checksum: "a31e2de6e3f8a52adc882eefdb0e54eb69fa355a8a7104819830a59f56f39ecf"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260807190947.31209864697/UseSmileIDBridge.xcframework.zip",
            checksum: "0307744721f2b2c0e03a6ae73cadca62fc6a965d542bd3c2cfa516cf68e701f9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260807190947.31209864697/UseSmileIDVisionFace.xcframework.zip",
            checksum: "71f2b4d417fb8d418c765c28fe09c6eb8ccd7ba6b74aed674b488dbb9e2db2ee"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260807190947.31209864697/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ed84311f2526ecc4fe083a15212d828f31488aeb388b9aadd7f92fd10223c281"
        ),
    ]
)
