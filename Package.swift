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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519080636.26084546310/UseSmileID.xcframework.zip",
            checksum: "dc2e24dd1e8e00019f2486a6807d2ef35ce29df4e7f4f7ee9d02622633a32df9"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519080636.26084546310/UseSmileIDML.xcframework.zip",
            checksum: "29395f1099fb9405b5b7c02e49abc682f8c33eceebc4d8692f6ee73eb71beca5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519080636.26084546310/UseSmileIDVisionFace.xcframework.zip",
            checksum: "3f735b915d740f4d5d1f9bd43a0c91e1a14fc9f5651dcb359f7f4250532f77b9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260519080636.26084546310/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "aa15277c918ccd663d46efade2c75f315e3715f3b43bbe8dbc277a30997aa9a6"
        ),
    ]
)
