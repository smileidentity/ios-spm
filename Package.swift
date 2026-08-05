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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260805112742.31001244670/UseSmileID.xcframework.zip",
            checksum: "4535b3ecc21da0670774a77aa7321cd7c2519345720a3ee4f652a0a3cd889478"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260805112742.31001244670/UseSmileIDBridge.xcframework.zip",
            checksum: "6aa515273ca541d081917c146211bbf31601bbb89f24d0b8ac533b84f1bd0b57"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260805112742.31001244670/UseSmileIDVisionFace.xcframework.zip",
            checksum: "cd372352e9fadfe14fad98e292abf502aa5b561dd54e5c6f0fe68fc405bc870b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260805112742.31001244670/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "356e09c9ca0c83c13a31c0e3b4042b6440619b5d8e81ad6b7ed551065e18bcc2"
        ),
    ]
)
