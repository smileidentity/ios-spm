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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260501070526.25205981669/UseSmileID.xcframework.zip",
            checksum: "e309409bd821b4dfbe50568c57db3cc9ab6ab9f2de72b5cc6d6bc660b7575f14"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260501070526.25205981669/UseSmileIDML.xcframework.zip",
            checksum: "48e2d1a72c32dffefe04105f07bfa08af84e31e8367afb3dea6fcb85997778a2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260501070526.25205981669/UseSmileIDVisionFace.xcframework.zip",
            checksum: "11b4967aba281d0c0f08f488755fd7e7c77dbc70c80a39a08e60ac81ddb7e09a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260501070526.25205981669/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "c7e5ba15d47deaf10a71df72942606aa8b2573b265d16b8cd7e543453ec0c806"
        ),
    ]
)
