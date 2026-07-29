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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260729185221.30481600467/UseSmileID.xcframework.zip",
            checksum: "8751bf416116da19b089c49aa7caa1698c8f245a740dbf114fe3e7f4dd2de9bb"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260729185221.30481600467/UseSmileIDBridge.xcframework.zip",
            checksum: "7b61593ed47222c56d2588333479c485cd1fc970884c873bd3d7b3a18cc7dcc3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260729185221.30481600467/UseSmileIDVisionFace.xcframework.zip",
            checksum: "4a84a838ddd881559607991c9775f3c1954d3507bb54cd7ed0012198961dc834"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260729185221.30481600467/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "8106fd1c464990d85faa6aa647ae0e0075f1f54189dec67b475498a1830f7508"
        ),
    ]
)
