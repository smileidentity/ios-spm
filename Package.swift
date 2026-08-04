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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804200615.30945936477/UseSmileID.xcframework.zip",
            checksum: "61b2d7713b8aca42582d2cf4a1c4967b2da15d8c141b9cb56b7cf4eedef46203"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804200615.30945936477/UseSmileIDBridge.xcframework.zip",
            checksum: "f1cf4c8e14370ab8e370aac3990ec80b9cab85aea4eaeb030f888c697022ccf6"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804200615.30945936477/UseSmileIDVisionFace.xcframework.zip",
            checksum: "b2927326dde6094717b8b28713ff4770588eabb94021fec0eabf121907b8b8ab"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804200615.30945936477/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "6a04566688c730bd75fd5aaa551921fcaf093c2a5f9236052f9ab0d77c770119"
        ),
    ]
)
