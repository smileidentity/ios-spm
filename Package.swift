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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602192652.26842921818/UseSmileID.xcframework.zip",
            checksum: "a070984cc93fa64a971b3ee942926860800b2e9b8eb80723d2039476b5190536"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602192652.26842921818/UseSmileIDBridge.xcframework.zip",
            checksum: "9ea0873b92e3f080ccbd3d4324feafc6fe444da97f7b136ce7db88cda6ec9924"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602192652.26842921818/UseSmileIDVisionFace.xcframework.zip",
            checksum: "97823df116b37b48903f55253f9f73784aad45223e146111c2ff9f44dd871da5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602192652.26842921818/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "43576eb8b2b377bdd3739b429a37c57c04e76d41394237dacf57a87e6e752ebc"
        ),
    ]
)
