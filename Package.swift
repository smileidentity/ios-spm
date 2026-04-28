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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428153113.25062173464/UseSmileID.xcframework.zip",
            checksum: "079e42fabb2427694a5c430cd37e14d97549e5fbadd4282359b19ee20f3743c9"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428153113.25062173464/UseSmileIDML.xcframework.zip",
            checksum: "5a682e7e60ec374c495c1fa5a30172b8f89d6e837cba52f53d1394f19d0dbb70"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428153113.25062173464/UseSmileIDVisionFace.xcframework.zip",
            checksum: "873af3d7c86edc57a5c712826cad467838c4311088e525a3d68394db2f600104"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428153113.25062173464/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "bb23777f8705427fc3aec2cd66061fe6350d1c4668ad929c677f0067d2355697"
        ),
    ]
)
