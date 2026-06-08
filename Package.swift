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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260608085746.27126793395/UseSmileID.xcframework.zip",
            checksum: "98807b2b27686b2308e440dd56b2011d4bbbff3ee08e84920ad97e0853195273"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260608085746.27126793395/UseSmileIDBridge.xcframework.zip",
            checksum: "582cb6804e3383f0951b5178878198801f3964643c3ef622b465a064508bca2e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260608085746.27126793395/UseSmileIDVisionFace.xcframework.zip",
            checksum: "9693cb202e85b07b762611c0cb867b3362841701d41312f4a5578fa6f1d40da8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260608085746.27126793395/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2ec9c08253b88e36d259a1859ab21429e435a9755987429b4be2a86f3bd182e4"
        ),
    ]
)
