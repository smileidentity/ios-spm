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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428173853.25068354419/UseSmileID.xcframework.zip",
            checksum: "065d501218160b17c3c3bcf5d401234569cfaf70403962dc987b8cccadf069ba"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428173853.25068354419/UseSmileIDML.xcframework.zip",
            checksum: "622cfa80fb676ef83c017dff5374f1c77acad8534512787b56f608d60f91e955"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428173853.25068354419/UseSmileIDVisionFace.xcframework.zip",
            checksum: "3749e7f0f95791e78d6e219aa3432d213cbc52e4aa8a4b36d8734a4a55e00eca"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428173853.25068354419/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "fd1aad8c159885231f478fcc46be7e8ecc5549cc611a692e6e9bc84de6b11b60"
        ),
    ]
)
