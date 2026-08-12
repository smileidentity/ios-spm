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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812101142.31585976986/UseSmileID.xcframework.zip",
            checksum: "17a417324692c354cc3a84e4963b5a0c2199ec532a57ebcee14f5efa89776256"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812101142.31585976986/UseSmileIDBridge.xcframework.zip",
            checksum: "d2e3dbb02e85c1b49a311ada9eca5c5db737f00ed2f103389cc36eb69c2305cd"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812101142.31585976986/UseSmileIDVisionFace.xcframework.zip",
            checksum: "981a2a41acfc5140c428659c27c5e014f4e7340286239843ff7c717bb85dce4b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260812101142.31585976986/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "c922a678df2c19b65df8c84cee35aa7bdcb708c8f3cdf95f855b629e5187e946"
        ),
    ]
)
