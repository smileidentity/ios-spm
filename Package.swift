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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707125441.28866631859/UseSmileID.xcframework.zip",
            checksum: "4d143e024c2de2c52306aeb9d840eefdc5f0ef75a99c3bacd5aba2520f695810"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707125441.28866631859/UseSmileIDBridge.xcframework.zip",
            checksum: "8ad8b2ee6fce64308d9351c866b6bb23299025189ca684336587d60d7332c241"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707125441.28866631859/UseSmileIDVisionFace.xcframework.zip",
            checksum: "25834230fabd96c76d4780717e2aa5318a11d44b2362c4a250ea8d0973eb3f32"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707125441.28866631859/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "90de5706f98538ca2c49668e4e547fe7afb2fc285773972e8db7219327996b07"
        ),
    ]
)
