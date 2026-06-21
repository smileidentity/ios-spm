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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260621115022.27903383327/UseSmileID.xcframework.zip",
            checksum: "b5be1490a8000e7b08ef30abbccf049e1fc58633c4a2b0ba511fe1b7f4a6ee18"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260621115022.27903383327/UseSmileIDBridge.xcframework.zip",
            checksum: "a77228e9d9e0de8f5e9a405da8cc3aef7be6baf73ba5e916ea7b7d37e87416a8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260621115022.27903383327/UseSmileIDVisionFace.xcframework.zip",
            checksum: "5e1d020e25bca6abe8985ba823f0f10aa910db9672c0b9e7c1595406d0e9b15e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260621115022.27903383327/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "5e62396f165a5f55e7f925b643e26589773d9fa4ded37c5e8cbf19a0e666ebb3"
        ),
    ]
)
