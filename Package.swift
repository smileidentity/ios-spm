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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604125009.26952769317/UseSmileID.xcframework.zip",
            checksum: "56a94a3ba5abdf847e7b27611ab612885c6fbbc4bd83e4fac0aa57ceaee9c551"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604125009.26952769317/UseSmileIDBridge.xcframework.zip",
            checksum: "73937610a8dbe83fd65b88982562fc35236cb4490fb01cba720d0d32686eed3b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604125009.26952769317/UseSmileIDVisionFace.xcframework.zip",
            checksum: "661a4014eaf8a073d75c99af808bb40eaa281146c7b577b3c7ce90f9c127c922"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604125009.26952769317/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "9aa9ebac87846205a29085eb64e4c337eb587b8c995fd9a2c54b206d7a9007ba"
        ),
    ]
)
