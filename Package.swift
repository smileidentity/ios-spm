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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606033735.27051529227/UseSmileID.xcframework.zip",
            checksum: "68132faad5b5e6fa734abef358ba0006c8592290c01723c4434a94c5304a1df3"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606033735.27051529227/UseSmileIDBridge.xcframework.zip",
            checksum: "f553f11102d5011bb9d867e03526962d9020ff9fc080c80775f0e42f8677bf6a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606033735.27051529227/UseSmileIDVisionFace.xcframework.zip",
            checksum: "9997be16a3d5acfb9f5d7cf7108be523887fac0e3b332a11e8f254d3ac268abd"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606033735.27051529227/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "71280764f42075a94569d1ac5ddf6b6fa5744c89a992083b45e436c3be40d098"
        ),
    ]
)
