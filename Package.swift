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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260617082718.27675991262/UseSmileID.xcframework.zip",
            checksum: "b8eca4342eab2eb555f880b5dd09b16284483fb30da6629837e1b1d5fd8fe2c3"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260617082718.27675991262/UseSmileIDBridge.xcframework.zip",
            checksum: "bf546cdbd90c779d85a3de8c9d9dae09f877adfb3b8745d5de9ab4d6f7181924"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260617082718.27675991262/UseSmileIDVisionFace.xcframework.zip",
            checksum: "5a31e0ffb158ca6f3a0e7a457071ed1da9a064202cd4c5418bc2834624c475e4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260617082718.27675991262/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "70045aece6f3cdb132ac5d1342302561021b2770985a57e50ee08a874b081394"
        ),
    ]
)
