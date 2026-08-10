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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260810210751.31432041214/UseSmileID.xcframework.zip",
            checksum: "5edcc14787c8cdacf05c74adc51a45b009658798ac99a28210beb3e164ddae81"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260810210751.31432041214/UseSmileIDBridge.xcframework.zip",
            checksum: "424ccd992ac8f427d4fee3f1a4b1027f2de3c74f0def11fc908566447839366f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260810210751.31432041214/UseSmileIDVisionFace.xcframework.zip",
            checksum: "12204c063e72cf01d25b7655e27a00fccabdb7fea77b0e9519f7710ac3a72622"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260810210751.31432041214/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ea7c70779294bae73222302d7931e75760e8ba9844ccf26df80197cd0ef6fee7"
        ),
    ]
)
