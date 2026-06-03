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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603162341.26898177946/UseSmileID.xcframework.zip",
            checksum: "c620f8163d7ac01cc388e20a82db30df8fe0bd610ab9a0856b70638db5328b8e"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603162341.26898177946/UseSmileIDBridge.xcframework.zip",
            checksum: "fdd562e9ea8bad4c05e6900055933595ea4407d5c7284eeb48b6e704e34e2e4d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603162341.26898177946/UseSmileIDVisionFace.xcframework.zip",
            checksum: "826c2236d35af6cdde83aeb282bcc6ce7c2986465c43ce1f6af8bd6e56bf3e83"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603162341.26898177946/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "55048f4047be4ca3368e67e0c07373ba7074b601f5e411a4b63f4c12e4753bb8"
        ),
    ]
)
