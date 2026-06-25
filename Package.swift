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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625035324.28145679057/UseSmileID.xcframework.zip",
            checksum: "938bc7e3e551acbaad4e06029df82ccdaa2952257cf38585166ee8dda22c7042"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625035324.28145679057/UseSmileIDBridge.xcframework.zip",
            checksum: "52ac6e9dd977cc829440331a29f99454fd1d22c20c89e2af4418998a62577ffa"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625035324.28145679057/UseSmileIDVisionFace.xcframework.zip",
            checksum: "902b192ce07a79103ca65b034142651f35518ccfbbaa489c2a9a1cf1f9a93d56"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625035324.28145679057/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "dc3fad933e4818c0b64c3fe91c6d8648781dd861b949b4bbac468e19160e29a8"
        ),
    ]
)
