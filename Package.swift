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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428153708.25062483327/UseSmileID.xcframework.zip",
            checksum: "7cfcb928d1d7835f85e8537fe9ad521e954e0c6dda281d565a30ae7e119fb7d3"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428153708.25062483327/UseSmileIDML.xcframework.zip",
            checksum: "07a48954bf2544d35c7e31f04b0ec9085041e7c8d43536febdc5f8c36d57c707"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428153708.25062483327/UseSmileIDVisionFace.xcframework.zip",
            checksum: "1af9e47a9b3c0c817f54e4a1401fa9cc931e048d230633dea9ff7a7fa4ef379f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428153708.25062483327/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "46fb058382fa52402c59a9a0e10a984c7880e800d4773e8afb515002fb8dafe3"
        ),
    ]
)
