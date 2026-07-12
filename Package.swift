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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712013525.29175476409/UseSmileID.xcframework.zip",
            checksum: "11fcaa72afbc61a40d93c7afec0028204b72ba35561da89aedbbd56ab64dfea4"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712013525.29175476409/UseSmileIDBridge.xcframework.zip",
            checksum: "9d3aee06f9b05b3e3aca475e380cab3fa08325b07ade28ecc19de6efa2e8fd94"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712013525.29175476409/UseSmileIDVisionFace.xcframework.zip",
            checksum: "61856e9ee64ca92eb46407af8540691b30e6f19dbfc296cb25d87b6df50fe265"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712013525.29175476409/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4186290727a605d7475e7021b4b786c73341727b391aa99bfd5fbb766d175318"
        ),
    ]
)
