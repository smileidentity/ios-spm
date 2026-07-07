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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707110502.28861326482/UseSmileID.xcframework.zip",
            checksum: "51a423365b540cb56df7a694384ded2db137d62fc1f0024cf420f3d7874b8457"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707110502.28861326482/UseSmileIDBridge.xcframework.zip",
            checksum: "fee5b8f4f3a2ee09ff327cd0977758293523f84b24969a52a9dd9bac5f05a665"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707110502.28861326482/UseSmileIDVisionFace.xcframework.zip",
            checksum: "350dced441c16f6c96dce7f32d2e11e79cb799573ef252d81b63f29d3abda40c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707110502.28861326482/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "495dd8358692947d0415bdf05dd61132e54deecd14b4f1131612c20a25b444e3"
        ),
    ]
)
