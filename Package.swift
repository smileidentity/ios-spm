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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525143633.26405858283/UseSmileID.xcframework.zip",
            checksum: "4c9b5f3a5d073c0c8694629ee0ecbe2d8991d5feb0e73f7a0e1ba730abf136c0"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525143633.26405858283/UseSmileIDML.xcframework.zip",
            checksum: "8ecba30ba22a3e9151e58d9749ac586934d3f15a63dfdc4d36fe6bd427b5e766"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525143633.26405858283/UseSmileIDVisionFace.xcframework.zip",
            checksum: "f09cb481d680d8c8d1d23365c04f19769b5e91fe1761b2d7f21c16dbb95dacb5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525143633.26405858283/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "26321bd80de9b9c77877614800b43535ece2125fd60cbe88b463793691ae7756"
        ),
    ]
)
