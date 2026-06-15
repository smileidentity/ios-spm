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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615161022.27559701572/UseSmileID.xcframework.zip",
            checksum: "45a02257a3120c823e4dd9b2e73093da8466e37ad3780c491f47af0fd0b7f66b"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615161022.27559701572/UseSmileIDBridge.xcframework.zip",
            checksum: "fa21e3d8dfe2f9d1ec6e77abda4dac908a0c9dc7cadae84f6ef239aa3b987234"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615161022.27559701572/UseSmileIDVisionFace.xcframework.zip",
            checksum: "1be08e32f1a004d760df02722dac8206595142e641f26d5e1cdde45093f2389a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615161022.27559701572/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "14fdf6840abb7c211759b163e52fac7af567a670e660f7eeaf1b2951a1c503eb"
        ),
    ]
)
