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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260810124756.31389315720/UseSmileID.xcframework.zip",
            checksum: "112314d1e414a3d112221fad5b11c3cc5910b7ce7f2117bb0f0e9f68fba1a621"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260810124756.31389315720/UseSmileIDBridge.xcframework.zip",
            checksum: "35dc310904dfa4dd49c639366cafaf606cbcdd7fc9798d767e64ed267ff311c3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260810124756.31389315720/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d6915e6299b58399014b4d32a5e0c58d60da530aaef81861b9df282036c22597"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260810124756.31389315720/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "22fdfa627aed89f713aeae3f3815b690e38f166ecb393ca64f6adda70c404540"
        ),
    ]
)
