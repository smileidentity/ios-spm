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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505104624.25371841940/UseSmileID.xcframework.zip",
            checksum: "efa3ac9bd1fda8e11b8f4e77fbd2a42251746fad0b22b0f89b758faed1cbd227"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505104624.25371841940/UseSmileIDML.xcframework.zip",
            checksum: "da258f6d9412cbdd6767c5a0f8da32a299546cf9254f07b999ca74adc0294504"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505104624.25371841940/UseSmileIDVisionFace.xcframework.zip",
            checksum: "fc84fae53c4f4626f27fd4f639dca991eabab4735a2eb723482aea3a2cc325bd"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505104624.25371841940/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "5abd28d349c23d8ac96550e7844b0ad653b073c3682c1689c7977a78101a173e"
        ),
    ]
)
