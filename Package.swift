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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260529173531.26652405001/UseSmileID.xcframework.zip",
            checksum: "10488f945fbdec12960096ed1c58df8b4a1ef26f13bd89be86ebd7898de296d5"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260526083538.26441596566/UseSmileIDML.xcframework.zip",
            checksum: "5afdad4929a5406c2a00fdc1ff974e142bec0864453f969cbc6091b18e8e65d2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260529173531.26652405001/UseSmileIDVisionFace.xcframework.zip",
            checksum: "36d4b5acd1c7375368c7d82e80da37d5956a11a2e0f6bf8eeda2477a3efaec5d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260529173531.26652405001/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ba4438bb3ca54be35a4407840a0204984de073746314b150112d91c296ff2b36"
        ),
    ]
)
