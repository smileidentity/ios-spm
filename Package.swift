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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260427153804.25004566269/UseSmileID.xcframework.zip",
            checksum: "f6af43a7876f904b76bb964b9af6d803fb0d1098c991696cc01c401aceb1b3e8"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260427153804.25004566269/UseSmileIDML.xcframework.zip",
            checksum: "6b67318265283c1a50b3cf217fe0abbe9f7284d765c55a430570f5ac9783ec43"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260427153804.25004566269/UseSmileIDVisionFace.xcframework.zip",
            checksum: "9a56d7baf8bf29a5551afd49db77123a0d5d1fc86afb0f57adfd98108da3edf3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260427153804.25004566269/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d4179c4e1d1bfb24033d93350323185b734610194d627f9ba3962bd59ef9ed44"
        ),
    ]
)
