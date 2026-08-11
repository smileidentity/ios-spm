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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260811144953.31503246215/UseSmileID.xcframework.zip",
            checksum: "8b96b8ba1b5a129b50b226b38a7e51f241074c4a7d2a775f07cad531f26b0826"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260811144953.31503246215/UseSmileIDBridge.xcframework.zip",
            checksum: "1aa2458eb9bb7171c112a09e21444f4239272352aba7229f64d27113638652d4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260811144953.31503246215/UseSmileIDVisionFace.xcframework.zip",
            checksum: "94ab71994e67fea37fc94177bc21f41f2e14e5381516c6f42bb8100ecc729bc1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260811144953.31503246215/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "75579678a55d9a86ad4786a23dc00a36b43e3e89ba10247034eaddb4b7eaddba"
        ),
    ]
)
