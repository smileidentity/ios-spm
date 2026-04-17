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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417093916.24558499429/UseSmileID.xcframework.zip",
            checksum: "4d0346601529a1e08c7b8a9a67225dbb82caab9b9143c689f1775f5a2cc85035"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417093916.24558499429/UseSmileIDML.xcframework.zip",
            checksum: "7688c22674120900a8cad4adf9ee3805e351b8b210beec2f3eed1d14507443af"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417093916.24558499429/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e8666dbbc079f205d5cf07b2bf5054d1793192e10c6af779574a4c69939a0b86"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417093916.24558499429/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "fad24345a9114ea0867f17b943e36bb784a4b127967eba5a13b8c86f95524b62"
        ),
    ]
)
