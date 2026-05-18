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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260518103308.26028134249/UseSmileID.xcframework.zip",
            checksum: "b78863a78ca494ab120a5f66cafd68e33193ab657528a0748c270d30437b19ce"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260518103308.26028134249/UseSmileIDML.xcframework.zip",
            checksum: "f535704a56132eb9c856cf0cf2f33b380263e21e72e7f035e2bb2ef47acd9c05"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260518103308.26028134249/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d5fabf0170d86403fd03a9da14b5cbc1b437b84c1c886dc8b69fe08fb8f25de1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260518103308.26028134249/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "601dfe06e4436dd6a1b541890077234a7b9e943355962880319750fe0f5a65d2"
        ),
    ]
)
