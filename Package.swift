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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260504172541.25333101975/UseSmileID.xcframework.zip",
            checksum: "05a48f34c82bdd2e79284514155540ef9581c564e1eaf251d51e3a4557ee835d"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260504172541.25333101975/UseSmileIDML.xcframework.zip",
            checksum: "1019802c4f716e60928b966831ed6a8088fce98244757c5dea9f51dc6fc11f25"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260504172541.25333101975/UseSmileIDVisionFace.xcframework.zip",
            checksum: "dc8f089ba7dec182b33544334becce5949c2e8bd5be39b56386d1195f291f6c2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260504172541.25333101975/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "c302cb5f02a0b5cbcebbce5cb0cb92f98dfa9e809b0d0c989c3c76de45f61242"
        ),
    ]
)
