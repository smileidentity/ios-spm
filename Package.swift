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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605132930.27017738219/UseSmileID.xcframework.zip",
            checksum: "886f96d1c145b56b23d35f88749816e9f93adfa0f3a15618668e29a9ecc77c92"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605132930.27017738219/UseSmileIDBridge.xcframework.zip",
            checksum: "989fef3315eb65cfbe1bafab4f2615ec510b98c7217f9d2c8c8159ccdc9c2fde"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605132930.27017738219/UseSmileIDVisionFace.xcframework.zip",
            checksum: "c33a2a230c657154c084eea20f96a26eae73976656b6498dc8d91a9d6b60490f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605132930.27017738219/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "04675daeca95f6f2873a7c41e980e36281ccc861c8ef20671f6f6c5decbf4e7c"
        ),
    ]
)
