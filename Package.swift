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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260607100504.27089423422/UseSmileID.xcframework.zip",
            checksum: "73b634f66d3d1374b13ad2eea04ba12682899fa9fec8b76a18a68820798123b0"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260607100504.27089423422/UseSmileIDBridge.xcframework.zip",
            checksum: "d1870dfa3d10c5f82a44911c0cc59f4b05c39f47899f7d7cbb4495ec598a32a5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260607100504.27089423422/UseSmileIDVisionFace.xcframework.zip",
            checksum: "59e34c87155f02669d45fd5b1aa5ebe799dfd8d77d15c448b648f0caea62080f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260607100504.27089423422/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "cd0f629146126e1dfcf6d9f8e6d5be4ac06db3b5e1af4b64b1fb9f688fb3961a"
        ),
    ]
)
