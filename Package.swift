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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423171308.24848569293/UseSmileID.xcframework.zip",
            checksum: "f82a1d18dd52ba689338a692640e986464cf7d3be85c119c6f01a9cc7238c21b"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423171308.24848569293/UseSmileIDML.xcframework.zip",
            checksum: "c6da23a5db4578e2b7f868dc09aaea9c896f3225649cd310a14d8e65f9a28fdd"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423171308.24848569293/UseSmileIDVisionFace.xcframework.zip",
            checksum: "f2b5874758abaf8ce2e6834a95d2e11457ac763c0faa8abc27ae1d0c734266ac"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423171308.24848569293/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "01bfd0c399bd60ccb5ca5155f2c83daebae6accfcf0815d89093d4b46406867c"
        ),
    ]
)
