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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701081719.28503611482/UseSmileID.xcframework.zip",
            checksum: "d2e1d602877ca634e8be9e8b0c88765ee08a917b509d0f8507a76e3ca22fe6eb"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701081719.28503611482/UseSmileIDBridge.xcframework.zip",
            checksum: "a6986270cbf8ce1aeba1c610414ed1eaca55029c36a79ed6da04d6b0377f029e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701081719.28503611482/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d73ac39ea09131438a8c0bd2e9d960b37cb7d3a6c69fd76646fda368f222c87d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260701081719.28503611482/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2b922dc73db5cc9f6c348f061689780f276eaede9093150895f18c202072f7bd"
        ),
    ]
)
