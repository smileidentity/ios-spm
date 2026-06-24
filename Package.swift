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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624195549.28125694250/UseSmileID.xcframework.zip",
            checksum: "7da3acee11403e036a96df7476010ab5e4b0ed2c64c0f5652708513a4bc452e5"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624195549.28125694250/UseSmileIDBridge.xcframework.zip",
            checksum: "8441dbd082e370ecf6a275277771b397154efe5fbb10208854f670b31fed718b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624195549.28125694250/UseSmileIDVisionFace.xcframework.zip",
            checksum: "7302953b7576f1da21116018b44f806443e52fb3badee4c7fd66a39eede3549f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624195549.28125694250/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "40560252bb39b8930b1fe678b3a2950f0084e6edb569f973e2a4410b5f4d986c"
        ),
    ]
)
