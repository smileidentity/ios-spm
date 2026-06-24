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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624163417.28113937290/UseSmileID.xcframework.zip",
            checksum: "1217051ea9d21453e6e047d437d24bf06ac80dbe75a555612ec0073c5521df7c"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624163417.28113937290/UseSmileIDBridge.xcframework.zip",
            checksum: "7384b3ae08dc64862ea8f709152076646a7686949dfbfb2da0a63b2e9b89c026"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624163417.28113937290/UseSmileIDVisionFace.xcframework.zip",
            checksum: "092943b0aebd1600da6dfdc448504b363b85f4e55f7d6ca3f2fba8e0207cfa7d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624163417.28113937290/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "aac4022053fe9c08dac43579904d9c5341520cbfeb4103ae359e124c04deab3c"
        ),
    ]
)
