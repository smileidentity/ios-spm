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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606074424.27056544507/UseSmileID.xcframework.zip",
            checksum: "489a479a17ac2d4935ab903b6dcaae1d729dffbf9fce7fa057e383cef3486c0d"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606074424.27056544507/UseSmileIDBridge.xcframework.zip",
            checksum: "e728f602da9d271fa2b1da8b9ec23d35d6bce2f4e9e7af6ffec96609cca53346"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606074424.27056544507/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d471f0559203cea48d733a3f907d6fa8656cd7745edffb62fc54fe212a162762"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606074424.27056544507/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2917d7332f0817908aa5ab63a8654794adcfa35bcb99cf2e3affb46bb0922d05"
        ),
    ]
)
