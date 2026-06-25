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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625062439.28151198677/UseSmileID.xcframework.zip",
            checksum: "854d0774f845e97c12eed83603d37ecb60158d5bcea77980b712e8cd5a4f43d4"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625062439.28151198677/UseSmileIDBridge.xcframework.zip",
            checksum: "126401adf05276d546ba48fdcf6d0725267c2b8b0a7bf905a17df71691394b41"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625062439.28151198677/UseSmileIDVisionFace.xcframework.zip",
            checksum: "cc6eb18cd40985f0296455c354f88b29a2934371843ab8fc5210cce737087627"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625062439.28151198677/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "9b12afbddaaae24ae90ace61ac599e834f148494fb1d634523a5238ebb488633"
        ),
    ]
)
