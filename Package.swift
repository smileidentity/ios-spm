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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624122555.28098317303/UseSmileID.xcframework.zip",
            checksum: "0aae1a00f7d3604e37a55ff84d77e35d1fef4f77553a56b44806e8632535f90c"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624122555.28098317303/UseSmileIDBridge.xcframework.zip",
            checksum: "688194ee8e8b43da9a8e78af6e8efcc23072a83b680efd545629a814089789f6"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624122555.28098317303/UseSmileIDVisionFace.xcframework.zip",
            checksum: "64a62fd1592b45cf48975f17be317447cb1684bac4bee46b9f9b0bd9cdc1d6eb"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624122555.28098317303/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "94e6679414756d9cb60ef6de811d3e8fd1cd862a8003a504c88ea9ebdce70871"
        ),
    ]
)
