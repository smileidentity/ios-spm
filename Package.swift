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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606033343.27051446951/UseSmileID.xcframework.zip",
            checksum: "d8017e9704c1a5ddc380940d7a0798b1fd1df4a875458d18d4cadfd26240e206"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606033343.27051446951/UseSmileIDBridge.xcframework.zip",
            checksum: "fc76d23eb6c740b2db4d245e4d79ececfb3fad1c8aafb63885b3bde1066c8e01"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606033343.27051446951/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e60849229fe404891ed1ea1bfedd97b4722d1f1c0607639a80e997ce0b437df9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606033343.27051446951/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2bb4f105a008f1ed1ab63aec820b7d53043b67c25f6260bd0c60acabec1cce3b"
        ),
    ]
)
