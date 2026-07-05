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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260705211736.28755196852/UseSmileID.xcframework.zip",
            checksum: "2def8fba336dfcf80728f9d36bda97a6c38185f1b1e0d5f0aef86f9efe226c5a"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260705211736.28755196852/UseSmileIDBridge.xcframework.zip",
            checksum: "f2c8cd7710a683d1e84d01333f4adb9e832b4eb032dc32bd53949b9f2391da29"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260705211736.28755196852/UseSmileIDVisionFace.xcframework.zip",
            checksum: "53a3b37e9bbbd0084b4a355e6ed216d15bcebb425d6e07a3a32856bcdb201383"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260705211736.28755196852/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "38c47165934ec143c66cd282c4a5245b9a3a64f1e8ced986d514f43a6e30d4c0"
        ),
    ]
)
