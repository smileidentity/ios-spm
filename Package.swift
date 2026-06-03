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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603171840.26901109125/UseSmileID.xcframework.zip",
            checksum: "818aac4a8bbadde7ef61fd594abb7287e0edb7f10a0bda41070c1c9369b0e5a2"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603171840.26901109125/UseSmileIDBridge.xcframework.zip",
            checksum: "76eb08cb17c6e1d900bddbe49c83506133c84bf5908232635328bad82fea361f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603171840.26901109125/UseSmileIDVisionFace.xcframework.zip",
            checksum: "8ef6cd60c1caf0853b5b699ac942feaf7ba2b5152d95a3683566dda432be5ee4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603171840.26901109125/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d15f010ad9f8ee6deca26024f656599cba95ab8781900223d5a8b918f864fd75"
        ),
    ]
)
