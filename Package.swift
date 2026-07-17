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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260717143933.29588663553/UseSmileID.xcframework.zip",
            checksum: "d270af555ac825d0470b1cedab89b05479489d54100754240224ccbc67df6cc5"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260717143933.29588663553/UseSmileIDBridge.xcframework.zip",
            checksum: "38ee43854b8c8c1eabb0bb68ebe1a80fb0b030df2666cc577e5e6e65493d7868"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260717143933.29588663553/UseSmileIDVisionFace.xcframework.zip",
            checksum: "acac82f2e4db071c826241a08a33d3d415c4ae1c7776df4642f89903be3401ad"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260717143933.29588663553/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d9110054c776e044620a96e12c02c25401fb38a31130d08badc45b4c982ebfcc"
        ),
    ]
)
