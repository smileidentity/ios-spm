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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402115100.23898986435/UseSmileID.xcframework.zip",
            checksum: "e043ab1dc5dc9990c0a4f040717d750eefe59fe370224351954600846ddf52ea"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402115100.23898986435/UseSmileIDML.xcframework.zip",
            checksum: "cef7f0adafe95d3ae3c4885055cfa2002feecfd1745dd17fcf1029aa0665d527"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402115100.23898986435/UseSmileIDVisionFace.xcframework.zip",
            checksum: "0d6ec37debf36f66162f4a3c9f31665a2073acb479232201c30f6e27e29085aa"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402115100.23898986435/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "8947eec55c2843aeace1ebd0f84c206dc9714a293887f2dbd2d767039cb5f635"
        ),
    ]
)
