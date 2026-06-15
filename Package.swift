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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615211619.27576974093/UseSmileID.xcframework.zip",
            checksum: "15b8bb76e4d7864b7f1d6317f2734ba2ed03ff9254b5838e7b579acb1b4f53a1"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615211619.27576974093/UseSmileIDBridge.xcframework.zip",
            checksum: "a686291bf221e963eb775f4c6da86c332dc9dea08754ff15c1ac0c7656734182"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615211619.27576974093/UseSmileIDVisionFace.xcframework.zip",
            checksum: "42586c2735f83729144825361b9228a235fcef12bc770bf21beb7061f1bef5d0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615211619.27576974093/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "fc5412087a2555b5ffeaec5a376a24b8fbc5f7ddeb949f09bc3318c6465e08e4"
        ),
    ]
)
