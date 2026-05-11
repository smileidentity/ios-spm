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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511110551.25666344294/UseSmileID.xcframework.zip",
            checksum: "7de68371e0a365a29ce2d6d4542164a0a3f153d0cfbf4eedf632321ba24358a0"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511110551.25666344294/UseSmileIDML.xcframework.zip",
            checksum: "e0db650e3d3ca03f23d75ea7a8d72b30ce22373f39e46098d662c7a8e590c152"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511110551.25666344294/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d1db49218e0ee506ff9acc17b13b28c31f46847b277766063fb2ad9f5239830b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511110551.25666344294/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "e6efd788776084ec9ad7e5482ecc649e8d9c2b5d386f7281cf86348057b51632"
        ),
    ]
)
