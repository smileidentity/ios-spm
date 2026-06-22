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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622102656.27946185344/UseSmileID.xcframework.zip",
            checksum: "bcf31afe183baf23b7906ccebad80c539bbbf242e83894530495af6d55fd72b4"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622102656.27946185344/UseSmileIDBridge.xcframework.zip",
            checksum: "1d01d0b3249c0d80e1470d90e18bf0bb181e771f1645c3d2883106b80430dd34"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622102656.27946185344/UseSmileIDVisionFace.xcframework.zip",
            checksum: "14b2077f027e5417224479459927ac2a3cfd52f781769f783ef76d53713d60b4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622102656.27946185344/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2475be7be95e8a5d79f4e4f584a063ea3ef631119342f68fbd9376208a6ee825"
        ),
    ]
)
