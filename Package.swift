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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522230508.26316181048/UseSmileID.xcframework.zip",
            checksum: "8d4af1fe77e3e5cd16db9d7b57c1b2d6a999ccca9989ddc642fa33bf69ab1f75"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522230508.26316181048/UseSmileIDML.xcframework.zip",
            checksum: "8120b19e1643223c107b4121e003d8cdb52367a855c718e050e33ce551851484"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522230508.26316181048/UseSmileIDVisionFace.xcframework.zip",
            checksum: "5df1245618614cf464e2d48d6fcd8a353a2dbaee07daef20c9c5d858b36ba5af"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522230508.26316181048/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "cdef764833109b8f2618da9b74835c81a79b6466d8431696b5de39f0befa1da4"
        ),
    ]
)
