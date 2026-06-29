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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629082004.28335633174/UseSmileID.xcframework.zip",
            checksum: "35093b508895e72202912d5ad4296b3be72f187224e8d7caf250acd336a3fe5b"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629082004.28335633174/UseSmileIDBridge.xcframework.zip",
            checksum: "9de4ffd3108f8361cc32f1856f852988b7f8db7bf4a21332772d438891285d4b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629082004.28335633174/UseSmileIDVisionFace.xcframework.zip",
            checksum: "2789c7d4c65aea6c99973ce99a14c08bf3c73fe3f2958b79fca5aa59c7c39a48"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629082004.28335633174/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "c96c72859dc0cd8d48df208b6c41b272b1edf7de573575753647ca16ae349380"
        ),
    ]
)
