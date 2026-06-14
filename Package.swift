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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614130350.27499734789/UseSmileID.xcframework.zip",
            checksum: "db778a9432bcc3b43e3fe42d85708de3d9e5465febb53cb92b9ea393406a984e"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614130350.27499734789/UseSmileIDBridge.xcframework.zip",
            checksum: "f74c7766d0f629597feb2880f30ef8068f267ef0217cc145e406f54db5355dae"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614130350.27499734789/UseSmileIDVisionFace.xcframework.zip",
            checksum: "ce70c29bc5a5abb970fa8b3f7e3186fab2278852abf4d8928f7b347d09a94af6"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614130350.27499734789/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "832059c8eb59afc021c541ad5108ae3bed3dee0f1cd1536380e55639495b53c2"
        ),
    ]
)
