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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624171807.28116528586/UseSmileID.xcframework.zip",
            checksum: "1e7b8c6713987552222fcee6ca9414401af9ad00dd8aea2ef53089582a2a9454"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624171807.28116528586/UseSmileIDBridge.xcframework.zip",
            checksum: "649d66abfc61db34c6ef00df1f0a952dc580b31977c1eba85d011c6020fde412"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624171807.28116528586/UseSmileIDVisionFace.xcframework.zip",
            checksum: "b8af351992feea16c232531d4decb69f70e2a85d1d8b31bdba998116b54ebee3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624171807.28116528586/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "a6d2c1c7139bc4dfb8d1a19de8a25cde8bc51aa827107102dcd504f56250b13a"
        ),
    ]
)
