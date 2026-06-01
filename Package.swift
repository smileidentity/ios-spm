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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601150849.26763523882/UseSmileID.xcframework.zip",
            checksum: "82be60f5c52a6966e03f929be6e939d71f3f1cad38b42689782d6e230a235954"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601150849.26763523882/UseSmileIDBridge.xcframework.zip",
            checksum: "08b1cc43e0a0570a80e4c5093abaad66190f97e3fb0e1ad7276926b5dd0e686e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601150849.26763523882/UseSmileIDVisionFace.xcframework.zip",
            checksum: "c2692140333d2f03c5755072140200e0750eea411fc5028c66acc1d547f40338"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601150849.26763523882/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "e542f4e42cff306d85f001ff728f2e5ec9947dbc79bc6774c1c88c3272790b91"
        ),
    ]
)
