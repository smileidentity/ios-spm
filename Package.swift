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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417145246.24571464142/UseSmileID.xcframework.zip",
            checksum: "f3a04771b7e7a45c9dc812e52edcdd3c9c8f9bbf6f01698af5a24b4a1ad7dc74"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417145246.24571464142/UseSmileIDML.xcframework.zip",
            checksum: "580570d069b4db59714d2c5dfc1b0bf334530699dbc63ad385d97714cc37082d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417145246.24571464142/UseSmileIDVisionFace.xcframework.zip",
            checksum: "3364f646226487e57a4d5b1bfef1ed260fa51db2ac4d877605695cb67a672e9e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260417145246.24571464142/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "a8257ca52c7484a493daf6930d4a0b6435633d94fab2a58c0ac5bedf13218c1c"
        ),
    ]
)
