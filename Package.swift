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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260403190529.23958521605/UseSmileID.xcframework.zip",
            checksum: "69d2dbd3f4b1fef45ba20f6096206499c84f69512f1965f861a5df2d6d2a1b1a"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260403190529.23958521605/UseSmileIDML.xcframework.zip",
            checksum: "ce5a6f18b1029c2ab34803a528ea591c7b7f388583696286f62c48f020df45c8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260403190529.23958521605/UseSmileIDVisionFace.xcframework.zip",
            checksum: "6e35420e61c938dadb04e0895543e273a46e36d74483e9f1a596b4723ac31705"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260403190529.23958521605/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "5fca4fd2eef52a61be66277b1ac5490e61bb7f5251d3bebc4ea795d6977df56c"
        ),
    ]
)
