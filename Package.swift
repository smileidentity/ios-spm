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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714193534.29362155934/UseSmileID.xcframework.zip",
            checksum: "7ba93cc756fabd322dd132b6d81e7e3cf4f2646ed601084ec6795cb6255358c4"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714193534.29362155934/UseSmileIDBridge.xcframework.zip",
            checksum: "cc89122de49de62b9656a66d6768c9b4bc059fa1781edad0950222613548d2ca"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714193534.29362155934/UseSmileIDVisionFace.xcframework.zip",
            checksum: "a2dcff4b96586e46c303e95b2b33a15e4955752ed7dec16d804a2ab967ffca49"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714193534.29362155934/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2e3dcfcb3aad1b75f29dfeb2b8b5b04e79b2cf3a1e103a1eca96d9314b8e3d69"
        ),
    ]
)
