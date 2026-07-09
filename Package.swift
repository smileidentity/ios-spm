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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709141757.29024789725/UseSmileID.xcframework.zip",
            checksum: "ce04838307373b00d64ff9714e3a8d143e501da50c67e7051b7254f791012a65"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709141757.29024789725/UseSmileIDBridge.xcframework.zip",
            checksum: "98fb3ede94952729fb852552a74129bc2351bf4bb0fbafea12d4243834707ff3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709141757.29024789725/UseSmileIDVisionFace.xcframework.zip",
            checksum: "2f283465acc6ae8401f720923152406bc449bea6fc9138410de6ffc0648c57c2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709141757.29024789725/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "b5f7c9ae6b6e186fc244745e129d61b88a764243c3d2288ad20d10c439721dc1"
        ),
    ]
)
