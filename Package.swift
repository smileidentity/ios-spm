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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628103749.28319508679/UseSmileID.xcframework.zip",
            checksum: "2ae8d8f9c45d76a5d9df5befe1a477ad07155d62e0256c06f79b47901380f8b3"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628103749.28319508679/UseSmileIDBridge.xcframework.zip",
            checksum: "9890ec5909345605d70a8ec16540bd61bd1e39837fa72254fe91a649795ca1f1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628103749.28319508679/UseSmileIDVisionFace.xcframework.zip",
            checksum: "a56ba40bfa7ca24677d2f3e5548b087b3c76c300d579f8c98331355cb6bfa91f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260628103749.28319508679/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "36bf1d17b629ee5bb0ea2608eb31a74946b8f44555d98cdc12c688baeaf74a4d"
        ),
    ]
)
