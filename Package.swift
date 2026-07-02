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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260702161948.28605108099/UseSmileID.xcframework.zip",
            checksum: "0e1d89a5e763678691cacaaa412aca06ef83fcb5604bc8abf50140a8368100b5"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260702161948.28605108099/UseSmileIDBridge.xcframework.zip",
            checksum: "a5408806aead7c11f661642c9df72db7a897aff6245c49846166afbf02206a26"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260702161948.28605108099/UseSmileIDVisionFace.xcframework.zip",
            checksum: "a177e7ddd150dbf0e91b3617d1eb204c531bedce53225e3b501b4c6ac8c54b7b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260702161948.28605108099/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d75429b96a24a5b05f440133a760b1018dc295ef5f5e9d71b118a5572812d207"
        ),
    ]
)
