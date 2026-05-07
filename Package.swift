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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507221554.25525059212/UseSmileID.xcframework.zip",
            checksum: "ff9e0aca980b1971a6a34e2bc270a4d5655ec856e41a224907d3a72b20645d67"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507221554.25525059212/UseSmileIDML.xcframework.zip",
            checksum: "97d6e0cb3bd0902ac16a3fc7bedc9f2a01b351ce69ac392a40fa4dee8d6ad44b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507221554.25525059212/UseSmileIDVisionFace.xcframework.zip",
            checksum: "1888809c65f5698bf5dc886d6b73a3126d53d2157d8b37186d21ebabb9ea9b5f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507221554.25525059212/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "0acde04c179eaf4e3d4da0e5b34d27ff1bd9ac24c846c996414f5edae759ab32"
        ),
    ]
)
