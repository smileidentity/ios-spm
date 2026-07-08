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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260708113253.28939355851/UseSmileID.xcframework.zip",
            checksum: "3733191f5f835ee324cd7588628ed693956c04a9e5939eda58c7256ad531762d"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260708113253.28939355851/UseSmileIDBridge.xcframework.zip",
            checksum: "7c44badfcbf2c2216e87d583090ca68d944748d50a908ee27936f4f0388775ea"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260708113253.28939355851/UseSmileIDVisionFace.xcframework.zip",
            checksum: "973d262169a7096355d4545108e01614d15023481126493515f02713fac9f251"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260708113253.28939355851/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "faf99c48d3e493a7e34e5af734571b20e4a64a7f1f8002149c7dec26a2d41a6e"
        ),
    ]
)
