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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624072024.28082114457/UseSmileID.xcframework.zip",
            checksum: "e7e27dd4e9c5fc5fd2c6598adac6b8d87d948ffd818a7066c81490ff0a68d813"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624072024.28082114457/UseSmileIDBridge.xcframework.zip",
            checksum: "f8ddc20d23b732f0febc43b6c66a12797e40c7715e1e148da15ec2bd5b084061"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624072024.28082114457/UseSmileIDVisionFace.xcframework.zip",
            checksum: "4fe4b2fbfd6b8993f627a36efc966ed82ed2bf10496c2c79af5bb377156b15dc"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624072024.28082114457/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "b75e12b1320d1d28e5627254a09bfa6187ef135f329de4af21901f7914efc60c"
        ),
    ]
)
