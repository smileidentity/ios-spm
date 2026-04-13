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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413160914.24353729122/UseSmileID.xcframework.zip",
            checksum: "022cba102ea879ae37e92ea3948a4d8a9d7d132cdd2aba395654daeecf876819"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413160914.24353729122/UseSmileIDML.xcframework.zip",
            checksum: "d7b675ad35c8518abb4cfbccfb64384a68c2d2d010725f714c42b9406dea6d29"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413160914.24353729122/UseSmileIDVisionFace.xcframework.zip",
            checksum: "c234e0fe04c68049c09e18a7f14f9706f16535f4798855ba7def1791faee4779"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413160914.24353729122/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "021665f7b441de8924e86838d20cbb47ad4aa93b81b199a1b0446378c89e0b1e"
        ),
    ]
)
