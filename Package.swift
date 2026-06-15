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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615121017.27545257070/UseSmileID.xcframework.zip",
            checksum: "c76f5ad6a1e8365730c98008fb56fe4f876a7ed1383ca29b5c902848731dac84"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615121017.27545257070/UseSmileIDBridge.xcframework.zip",
            checksum: "015e69296d11f9c530c4c89769a9a260cf797a7dac9d49f525e245f9e6123e38"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615121017.27545257070/UseSmileIDVisionFace.xcframework.zip",
            checksum: "684ad3dbc1162b7d811c4ac8bb449824e79d2a2b991d66fbe9b4d3dd47a10e73"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615121017.27545257070/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "fe7944b8fe42eaa7e52c4b1fef34c7bf7a14f75fa1fdb2e2f6ae17af975b7416"
        ),
    ]
)
