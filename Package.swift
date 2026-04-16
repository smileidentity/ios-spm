// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDML",
            targets: ["UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416124503.24510934039/UseSmileID.xcframework.zip",
            checksum: "38f032d980e3f1a095fd55805861a6bf52c2b826dce2ae906144815d6b78d8e6"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416124503.24510934039/UseSmileIDML.xcframework.zip",
            checksum: "92eec5936154d8ae610c717bf980fb3e65fe8ad16a7c60ce962ff070f364b0d4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416124503.24510934039/UseSmileIDVisionFace.xcframework.zip",
            checksum: "03540e29f2f563a1baffb964f8781616de1c04cad7b4f9984802781c0207c765"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416124503.24510934039/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "309ee0030f484e0b6c8b04aff27e55fc8fe4fa016839a406167c19ef985c93d6"
        ),
    ]
)
