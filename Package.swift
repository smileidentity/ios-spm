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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713141500.29257009069/UseSmileID.xcframework.zip",
            checksum: "902e466ea71cc6448271cb1acfa04e219d9f81e866ba756ce33e470643e2707b"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713141500.29257009069/UseSmileIDBridge.xcframework.zip",
            checksum: "de93dcf9817321b3fab229c0c64483c9baee885d38cc802801b436da6619aa8e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713141500.29257009069/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d0d4334f8a0b46f4483709ca1bc9caa6968f0882d0607524e8294e5fd842a182"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713141500.29257009069/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "36d0d182f556ef1c5548b0640fbde92821bbf3ba57e2fe1e2c53c82d047c8a60"
        ),
    ]
)
