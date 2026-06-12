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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612104642.27410905174/UseSmileID.xcframework.zip",
            checksum: "81cc87d0b60283f697349d28763be9a56134fc361f8325cfc280c96fe8c418cd"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612104642.27410905174/UseSmileIDBridge.xcframework.zip",
            checksum: "f8a9e1eda859b333a7609c265c7228bf50860f64f924d267fb27ceb3523b7e0a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612104642.27410905174/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e830f7302c75e046d082c7c1b96d8accdc2028d9baf4ffd73ebd6165d85c6ec2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260612104642.27410905174/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ccfc3b60521d69c1b7c795189b804921f77d92fff747c121e47a3553854f4078"
        ),
    ]
)
