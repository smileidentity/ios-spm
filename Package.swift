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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260702123713.28590516201/UseSmileID.xcframework.zip",
            checksum: "f8cf5d02200cf89e1a9b7e00108933d0fa40c1d28a4d9c49203f4c98357ad193"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260702123713.28590516201/UseSmileIDBridge.xcframework.zip",
            checksum: "ad999c8eb4c125e1bff076cd5b6c5c46ca046d9afd641687382252de0f9dd3ff"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260702123713.28590516201/UseSmileIDVisionFace.xcframework.zip",
            checksum: "1a5952560a138afddcd5a3c81936aa40c58ccf17597b2edaa897b6073ffcc235"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260702123713.28590516201/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "45106911a90c60bc0e2840039cba2a303124e945a2ab1b7e4db2f7b5ea2f7aa2"
        ),
    ]
)
