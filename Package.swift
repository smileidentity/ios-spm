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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260610094944.27267974492/UseSmileID.xcframework.zip",
            checksum: "4c34ed2e5b826668a4768a9d6ff3f4731b3c3c4679ceb5e2cbb9e506b42e4d05"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260610094944.27267974492/UseSmileIDBridge.xcframework.zip",
            checksum: "ab5d2d44e185db685bc4045ce6891d26137678078290f8229022ce7a1016a634"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260610094944.27267974492/UseSmileIDVisionFace.xcframework.zip",
            checksum: "1ba1e1180973a2201270eb045e2f22a229f19fb407ccaf61147892d419f2425f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260610094944.27267974492/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "45cb9b5e227e5378a319f038d04f1a8711cfc0d2b3e0c024e569bc3405cc0ae4"
        ),
    ]
)
