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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260420115815.24665197297/UseSmileID.xcframework.zip",
            checksum: "cc635d2e5cac13bf4d2e2442fd911b84a914fbbeb688d6dcc5c1b42ce2880b31"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260420115815.24665197297/UseSmileIDML.xcframework.zip",
            checksum: "9e82e445308aabc3947a3d0b6b228973b992be2325c6ba950004c67663d4f759"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260420115815.24665197297/UseSmileIDVisionFace.xcframework.zip",
            checksum: "64d05147d7045eb8ae916acaa2252f7661f110ba2eb55980b5012df6938244ff"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260420115815.24665197297/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4765cf36d61909dfe334df18661e4f07f166b06ccf99202a794809e252c7ea06"
        ),
    ]
)
