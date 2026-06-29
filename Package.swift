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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629190833.28396173783/UseSmileID.xcframework.zip",
            checksum: "0cef0f548ce18a1a9bf5154025209cb9cac0dc42310b061c22b71d6cbce0d01e"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629190833.28396173783/UseSmileIDBridge.xcframework.zip",
            checksum: "fb7f0632136d75bd0945aa36545fe4f22c7a3b36d453949a8c9f8f39210a39a4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629190833.28396173783/UseSmileIDVisionFace.xcframework.zip",
            checksum: "371d1a553c68aaf58a8b63938bdbb230d91401f7f99b0359046f01ceae98e825"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629190833.28396173783/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "a28579184fd6315ca25d1e060f56533b08a685e53e9cee77f3c6097f65ce5aa8"
        ),
    ]
)
