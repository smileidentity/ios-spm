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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260803164539.30833299803/UseSmileID.xcframework.zip",
            checksum: "e1860572dbb784615708b9a5955592cb7e1b2e44d8ea7a2241c7e6e47ec91a25"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260803164539.30833299803/UseSmileIDBridge.xcframework.zip",
            checksum: "6107a9b8ffab950ef76a1d1ea3b031070fa1ac3e3f9662954958bf4463897de5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260803164539.30833299803/UseSmileIDVisionFace.xcframework.zip",
            checksum: "166f01333ec4b2a0e3a6901a5ac71b264daf26b273a1a14ce621b991648ef9dc"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260803164539.30833299803/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "0699933a99b5503d68837dc226f50f9e9b27dd0822e11103cae591a3bf7d5c32"
        ),
    ]
)
