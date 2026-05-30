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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260529183509.26655242900/UseSmileID.xcframework.zip",
            checksum: "e51e48e21f0905cd32df8d41e4b605e4e445bcfbc1144a2ce5e96263bf3db751"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260529183509.26655242900/UseSmileIDBridge.xcframework.zip",
            checksum: "66becff3b62806ad4d1b9ee593ea4d3136da9f0d7364f86ae8488e928cc62c83"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260529183509.26655242900/UseSmileIDVisionFace.xcframework.zip",
            checksum: "eb45897b84d0f9f0dd482cdfd09b6c020f58e54b91627ead80e10991c1105c4b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260529183509.26655242900/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "32dc6915c4eb6cdac1f3913ac32206b1b0a977e3ed25542a0e5406b58363fa79"
        ),
    ]
)
