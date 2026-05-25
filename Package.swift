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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525170714.26411627324/UseSmileID.xcframework.zip",
            checksum: "0b8d9becd00815d21214107192fef4cf85e91c7313dae11830b71aa21d10be59"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525170714.26411627324/UseSmileIDML.xcframework.zip",
            checksum: "05417fa9291aaeeb4400cb45552129b8efb99ba1c85e236917bf00e994393b43"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525170714.26411627324/UseSmileIDVisionFace.xcframework.zip",
            checksum: "3120ee02139517b5829ebf4dd7301d97f20a1857a8b5c599cb1567563093f997"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525170714.26411627324/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "9dacf9ed65c4d5baa0d27d7dcadb37fb5146f7e66f7a873a1098a5983058345d"
        ),
    ]
)
