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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260616075632.27602892850/UseSmileID.xcframework.zip",
            checksum: "ecb71cda84b93c5c5d0558705d2ad5d87859286b8e7fee5597feede17c4f564e"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260616075632.27602892850/UseSmileIDBridge.xcframework.zip",
            checksum: "a38a104ac0ffd36b1963022ec4af81a545bbaca4bfd14c75a59a3d342d5a042f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260616075632.27602892850/UseSmileIDVisionFace.xcframework.zip",
            checksum: "b741e2bf799886b55b7c1cda879df2275d7e9755027d851bb4c5e026ebb23334"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260616075632.27602892850/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d27fada9d3ec22e2899c873b64af2a403565e51b1d6488499a696baa51e33a59"
        ),
    ]
)
