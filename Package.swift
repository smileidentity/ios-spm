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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613093010.27462946852/UseSmileID.xcframework.zip",
            checksum: "5bab139f4261ac5566ddd0b349de5e179fdf6be47724688d47379bd53f32e26c"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613093010.27462946852/UseSmileIDBridge.xcframework.zip",
            checksum: "e4fcf3a1b14f4cb37f936046b82b129a3d117a47bb608d61fb8a7b18a9456e2b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613093010.27462946852/UseSmileIDVisionFace.xcframework.zip",
            checksum: "73fee2aaa01a5c6ca547369175fb2a76f2752ed161e6bff8c53952d827b7fd48"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613093010.27462946852/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4d0404247a4207ec23a5fb757264ed3f0cc11a404d21c9973b41268c60f15699"
        ),
    ]
)
