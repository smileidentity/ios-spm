// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDBridge"]
        ),
        .library(
            name: "UseSmileIDBridge",
            targets: ["UseSmileIDBridge"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace", "UseSmileIDBridge"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument", "UseSmileIDBridge"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622112529.27949218236/UseSmileID.xcframework.zip",
            checksum: "ae1fb97d42bea09d4d304822e9591c59d53f5143c5b7090fb11201caa97dcef8"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622112529.27949218236/UseSmileIDBridge.xcframework.zip",
            checksum: "d42134a1525d1845a812735a61cd1664edf0c6728113bcf71333cc24b8d77046"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622112529.27949218236/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d4ff45f10a1cdc96876f900e1a65ce99f54b236398b876f8154471dc06bbcd3c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622112529.27949218236/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "9d568f6a7d470c1ff9c32df2ebc2066336e96c6d3362629e3f116d00abae5e4f"
        ),
    ]
)
