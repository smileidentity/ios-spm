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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730115836.30540427266/UseSmileID.xcframework.zip",
            checksum: "30c487c865fb41b83407db4ef240b688e3b1eeff3825fd51189c8bb97e9077cb"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730115836.30540427266/UseSmileIDBridge.xcframework.zip",
            checksum: "ef0a389870c7430c68308b359b06b39923cd7527e81b72297470c47042596ee7"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730115836.30540427266/UseSmileIDVisionFace.xcframework.zip",
            checksum: "aa8079ace1b68837bb3e3140b00212d2cee05bf44690b1f705c9fe6791c4cbf7"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730115836.30540427266/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "f605db10881f971fe248fc0fe0a55b5f44f5253e2117c84c93cdaf0ba9b32501"
        ),
    ]
)
