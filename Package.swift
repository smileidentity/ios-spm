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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511125652.25671508085/UseSmileID.xcframework.zip",
            checksum: "29bd1e880ea2dacb70c8cb5529b128ffbbf20e6f232bec3a939fc4fb921f5d20"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511125652.25671508085/UseSmileIDML.xcframework.zip",
            checksum: "eabd5472fd13282698cbf2f937e30e9bdddfab410c9b587eea16c7f759d15d8f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511125652.25671508085/UseSmileIDVisionFace.xcframework.zip",
            checksum: "4f9a5ddd38f12d4ad3306e956fd9094137aca22b0de566db7e47a246e4f5067d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511125652.25671508085/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "77ed491e52c8986cd625a5f8ac2356e8b982a59a908b4ce4c0be24e1d0f5f362"
        ),
    ]
)
