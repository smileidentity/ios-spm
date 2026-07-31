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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731092139.30619417945/UseSmileID.xcframework.zip",
            checksum: "376dd5b2515b9a791b9a0824c0883c092e641004d29fde91e3afce996d235fc0"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731092139.30619417945/UseSmileIDBridge.xcframework.zip",
            checksum: "329ebc0ebaca3bec435e217ce7c22563f5018360e39cff4ed9095e98e15c8733"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731092139.30619417945/UseSmileIDVisionFace.xcframework.zip",
            checksum: "c3215a9e7c105d53a6b99c9c7d67d1957f1cc7320ea958523e9e71e4134b5294"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731092139.30619417945/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "9e99388bf426410b0659d86d30736c4a1d6e68011cc928a4699b2396fc4c6c6e"
        ),
    ]
)
