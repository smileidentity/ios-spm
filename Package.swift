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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614193047.27509629781/UseSmileID.xcframework.zip",
            checksum: "ddf86f5863f4db4864f2882f5f393a0971aa12f16637dc697742f1e37010d75a"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614193047.27509629781/UseSmileIDBridge.xcframework.zip",
            checksum: "bc3c98871148de5a5d5eb48443bd67a47ccc4d2d2b7ce607107d4eac541d24c8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614193047.27509629781/UseSmileIDVisionFace.xcframework.zip",
            checksum: "c1b262b3737723c3eaeafe47da17f93f9d47cc6a2f8efaa5a227159b13f39425"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614193047.27509629781/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "392cd9ef117c96331de557545cea90968448cafb3c5f78c91ca0d8aa89c2b417"
        ),
    ]
)
