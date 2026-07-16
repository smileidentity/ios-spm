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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260716190114.29526102738/UseSmileID.xcframework.zip",
            checksum: "072ba6d1d697345e2e8c0b2d2e412d9e06bf7f9f82ecca18c134d8b8500db30c"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260716190114.29526102738/UseSmileIDBridge.xcframework.zip",
            checksum: "a9b13b48927621fac9e7853d306eec273bc2184624b635681fa9a06dd671d032"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260716190114.29526102738/UseSmileIDVisionFace.xcframework.zip",
            checksum: "6049954546b29b25446dfc30d7cce420faa46d55b7f8ffb97b23d69bb6a752e5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260716190114.29526102738/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "f00f346b69ccf1412432d9bfb5232f0e5779f7607cc3b3ee17c3bf56509e9e9e"
        ),
    ]
)
