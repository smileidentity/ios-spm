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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701213414.28549231503/UseSmileID.xcframework.zip",
            checksum: "8ea5b188c8b089b73c4676bc217169d019af4a1fa567713d94ad477653b85ea4"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701213414.28549231503/UseSmileIDBridge.xcframework.zip",
            checksum: "ffc7555d91367f711afa6d254e694292dceaf6d57dff9cf6f574a326b123795d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701213414.28549231503/UseSmileIDVisionFace.xcframework.zip",
            checksum: "38f35e8f6abd2ea93ba426b3bdad6a1a695bcae2971411ea67b96bab61ef75af"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701213414.28549231503/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "80b91f8ca7a71163e70a4c15fae9154cffe31a9b3797cf84bab292b9ee0500b0"
        ),
    ]
)
