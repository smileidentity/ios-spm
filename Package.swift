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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.2-SNAPSHOT.20260814162254.31818681440/UseSmileID.xcframework.zip",
            checksum: "548b9880a871b901fd6dcbaa0d8157b54028b924215c8afa5109d41fe38aa9f4"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.2-SNAPSHOT.20260814162254.31818681440/UseSmileIDBridge.xcframework.zip",
            checksum: "ce330f0135e050ae9e33cec99df3863f313f7e0de2a25e91e9798ac1cbf73059"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.2-SNAPSHOT.20260814162254.31818681440/UseSmileIDVisionFace.xcframework.zip",
            checksum: "0a191d6821a35c77843755718daed79772be5e028c9fb1b5aaf97ea0858c141d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.2-SNAPSHOT.20260814162254.31818681440/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "251303a7f9eb4ec0d82ace27819104b3794ff8b7e6ca5b5e43f04241279db7ec"
        ),
    ]
)
