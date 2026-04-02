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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402111852.23897852443/UseSmileID.xcframework.zip",
            checksum: "c4fb673d6a2c3a337ea7f9391b1896867472a4a8a351ec6bdd1bb2717c82d3ca"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402111852.23897852443/UseSmileIDML.xcframework.zip",
            checksum: "293d3c161f201d9c990d6306f4e7abd27975589431785018558a1c873b5fdb10"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402111852.23897852443/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d1730b4bcd16040f59a02db951bbbe2b01d6b0ed4691294153601655e2ecbf48"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402111852.23897852443/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "99a154394ca58b7b8df3e58e39a138106320baff94d6e4db3eb356b7744ba31f"
        ),
    ]
)
