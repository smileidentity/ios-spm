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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260621154655.27904105728/UseSmileID.xcframework.zip",
            checksum: "8b2dfff5c5e4599a661dfcb6d28c85c6071c0caaabda2b9bea184762dc78c0ec"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260621154655.27904105728/UseSmileIDBridge.xcframework.zip",
            checksum: "551716c9f727e2454388723609fcb7fb551ce8acf9174c443fa4e38c2bac1a2e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260621154655.27904105728/UseSmileIDVisionFace.xcframework.zip",
            checksum: "179ebdd7a8c0bec2d056f4b9f30ebca23eac05b04b13b7df4aca9c019d172ec5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260621154655.27904105728/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "1460335487adcd2e7571196b946fa8c97c32cb26a46ddd341b934e0d77100fec"
        ),
    ]
)
