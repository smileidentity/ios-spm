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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604102837.26946161476/UseSmileID.xcframework.zip",
            checksum: "b6b39175184ee7455c979d675a2f57d6cc1c4682733e9de39fbf787b4c3acb99"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604102837.26946161476/UseSmileIDBridge.xcframework.zip",
            checksum: "7b0e3e3752b2a521220e9fe240c4243d8942fb4c070d8e3890d7aa92bf41042e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604102837.26946161476/UseSmileIDVisionFace.xcframework.zip",
            checksum: "4af7a1cba793ec79e51e2f282dcb3c98f2183d7a97900da65a70c975ccaa3a09"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604102837.26946161476/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "03f6b156659c32b80a4658b844f4c43f31da617c6abb67117bfef97531820038"
        ),
    ]
)
