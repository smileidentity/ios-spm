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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701143843.28525625989/UseSmileID.xcframework.zip",
            checksum: "af7ffcab745f69f1288108356ea1f74f4eb0c0fca5c4f5c47c218e027b4d93ff"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701143843.28525625989/UseSmileIDBridge.xcframework.zip",
            checksum: "6b283aac0a6fccf2b146c2a258c41664f20cb3401713adadab91c907f0d81034"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701143843.28525625989/UseSmileIDVisionFace.xcframework.zip",
            checksum: "a48576b59f052c52291fc1db04fb0ece5aab070401fc7546de0a1bda3e1d291c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701143843.28525625989/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "0adda3a40275b5bc37b9595b42eb6e3f3b60fc3d607427c57853e4d7f9dcec33"
        ),
    ]
)
