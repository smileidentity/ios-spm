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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706173224.28810730618/UseSmileID.xcframework.zip",
            checksum: "e9c8a1d0e2d57610786f646e4124249edf441f8795829b5839903576dc9a511d"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706173224.28810730618/UseSmileIDBridge.xcframework.zip",
            checksum: "d4829aac707bfb6a32f34928b42202765f1d63c305502d8767adcc187ff37ed4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706173224.28810730618/UseSmileIDVisionFace.xcframework.zip",
            checksum: "513f7c01b321c7b15317471f192f4f9c8607d985a7bb3f861d34b45b69b98f31"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706173224.28810730618/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "07d488afd31ad418684a329cca0a0aff3171a3770dcb4b8749b9047ac60a6287"
        ),
    ]
)
