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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701210213.28547560885/UseSmileID.xcframework.zip",
            checksum: "08aa2367214b988d1f156fb56b9dea180af0b58e36e30a69517e71c2bcec5963"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701210213.28547560885/UseSmileIDBridge.xcframework.zip",
            checksum: "59342afaedc5cd3e0360a5bae9117e7bad1e074505eefcdbcd9449e8ce94d82f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701210213.28547560885/UseSmileIDVisionFace.xcframework.zip",
            checksum: "bedfcb6af00a2605ca5653d6cc7d600dd05e544bbff24895544b8bcc071599c0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701210213.28547560885/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "773849b4ff5214f2510684ef364f969261b9433830df4d3f2a312b1c2db20db5"
        ),
    ]
)
