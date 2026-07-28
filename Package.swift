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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728163143.30378364091/UseSmileID.xcframework.zip",
            checksum: "d28de7f42d0885a0b865f4092d5968b39b1ff70da94a5a1fd81b84beb36aed76"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728163143.30378364091/UseSmileIDBridge.xcframework.zip",
            checksum: "9329076841287041f55d9f5ac06e4654e1a36f2a9f71407b86408a049e54be1f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728163143.30378364091/UseSmileIDVisionFace.xcframework.zip",
            checksum: "1e3f7fe38a653d88f6d58629549265d821706d2b589c61801cb764c8c70bc159"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728163143.30378364091/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "42d0c12add60473e83d691a33ff4ebdc59aa9c81728406f0c06deebd4287afdf"
        ),
    ]
)
