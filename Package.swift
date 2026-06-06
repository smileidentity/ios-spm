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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606053227.27053868719/UseSmileID.xcframework.zip",
            checksum: "b17de3b1ea97cd98f35f7c1ee4eb3330300196510c24ff61b1cd370e932ce549"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606053227.27053868719/UseSmileIDBridge.xcframework.zip",
            checksum: "19fa07e47fa686e9f97ff040c98affabfb07dd071554edc0904fdd5c4677ec96"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606053227.27053868719/UseSmileIDVisionFace.xcframework.zip",
            checksum: "8717499c6e1dd6e29cd5f40afb5ed91c7953235bbd20e054b6609bdb3ad5713d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606053227.27053868719/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ef2ecc4479295a2e0fcd173d6017ce17ed5cbaa7f02fbf7849b0542ab01e4dfd"
        ),
    ]
)
