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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522065642.26273252769/UseSmileID.xcframework.zip",
            checksum: "ab04199de88c77a3dac60e283a160b3c27cd7c5513b86cc766830ef1e42759a2"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522065642.26273252769/UseSmileIDML.xcframework.zip",
            checksum: "3f58a4a77188466ced90f84f607f29485e3129aa9a68868c51d9c734eeedfb83"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522065642.26273252769/UseSmileIDVisionFace.xcframework.zip",
            checksum: "276fd3d77be12c375bee04c73785937687f4db1abbdf7d5375519b862f2bc417"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522065642.26273252769/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d09f835ba150060ec34a78e80577241c19e31229d9f6783ac2b18e81f171c73f"
        ),
    ]
)
