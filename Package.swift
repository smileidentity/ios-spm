// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDML",
            targets: ["UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260405110311.24000169671/UseSmileID.xcframework.zip",
            checksum: "8ec0795bddd827279f7cd8bca3ac3a34023a866d4f1934f0c06bffa4769843d0"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260405110311.24000169671/UseSmileIDML.xcframework.zip",
            checksum: "1d52ce94bbf0351de80b4279cad7d6d77068df3edc03fc11a589916bc21a9545"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260405110311.24000169671/UseSmileIDVisionFace.xcframework.zip",
            checksum: "ef2fd6625adc4b54bbe1b60d04afce14594dd4cf854c7d8e484f41e97d6fe0f1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260405110311.24000169671/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "91889e72bd197a478c222b41264a40f3f9f54133c16987efc49537fccbb27d8f"
        ),
    ]
)
