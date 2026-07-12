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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712012814.29175288614/UseSmileID.xcframework.zip",
            checksum: "b4577621d7cff018960630e9276aead43f7d93e8a176b831f9fb371f54ec6d28"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712012814.29175288614/UseSmileIDBridge.xcframework.zip",
            checksum: "ed2089cf9925cf4ce66df3f820008c49ffd34ccda3514cfce73bf2e3ed43a3cc"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712012814.29175288614/UseSmileIDVisionFace.xcframework.zip",
            checksum: "aca8071c4ac3d990d959ec4e69924ebd05c2767565f6c24ddbb74a1a0c05476e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712012814.29175288614/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "73872313144d60dd4ee6b7d8537321f523395438d26dbe36957bdb3837ee7cee"
        ),
    ]
)
