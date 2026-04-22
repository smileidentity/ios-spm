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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260422093247.24771085236/UseSmileID.xcframework.zip",
            checksum: "d4b57e14fc07e57fb50dc0a5bd65a2bb478f3ed0073f44e804f4f94823a6de61"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260422093247.24771085236/UseSmileIDML.xcframework.zip",
            checksum: "d80f62c2be7e59b9e9c1649b768407af89311431f3f8caca7eaa91932b72b00c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260422093247.24771085236/UseSmileIDVisionFace.xcframework.zip",
            checksum: "729191ef4374effc027c81ae305be03f50679e56718e92350fba5d80824a2e49"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260422093247.24771085236/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4fd9a90fa2bf2cfd6c1b0d32cb4e693019992951e7bc175eecde5a8e51366d18"
        ),
    ]
)
