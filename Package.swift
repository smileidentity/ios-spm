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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606023556.27050239973/UseSmileID.xcframework.zip",
            checksum: "76a86224162c96c605b417ea1f444b76ddb80e328dbbe886641a46b69d7e91ba"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606023556.27050239973/UseSmileIDBridge.xcframework.zip",
            checksum: "e46c1c6ccb0019245b853c910151a01e0d9fc98b91c5ab471b5c5ef62da1255f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606023556.27050239973/UseSmileIDVisionFace.xcframework.zip",
            checksum: "8b773e3db0e4401be9e5dc5d3e394f5e7214f8c4b321f502f0bacd6cc9ba8ffc"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606023556.27050239973/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4b7f972527cc9513006180b7b1de5fb514d997e8389195b8d6c236dc0d9c6677"
        ),
    ]
)
