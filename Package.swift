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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260720121606.29741330619/UseSmileID.xcframework.zip",
            checksum: "28c199a46f028c3fe940a49428db1042bebea7100abbfb7c90459c548b07eabb"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260720121606.29741330619/UseSmileIDBridge.xcframework.zip",
            checksum: "d9895a6c44e2a697e62bfe3fea0084f78fab3e3723cdf0d34a29f1fcc4d6d816"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260720121606.29741330619/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d747223454aff8b3b3970b2efbad68b682b7d3f07e6185bd0bbeac23871d3539"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260720121606.29741330619/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "65656abbaa6461d4d4bda70c799e97778bf3feca5a8ff11ea32d7599d1338789"
        ),
    ]
)
