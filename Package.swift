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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728195935.30394023966/UseSmileID.xcframework.zip",
            checksum: "2f3ae63ae0113471eb206bb9aa56c69305eb2cd3cdaf99bdfecc067e0f022d10"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728195935.30394023966/UseSmileIDBridge.xcframework.zip",
            checksum: "3942e346ad863a4cefb9d25daf3aca1b01cb4dd5a171d29e9501286f0f958d1d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728195935.30394023966/UseSmileIDVisionFace.xcframework.zip",
            checksum: "c8965d92b9663989d90496432e14bd18071f206b894b24d775b7c37dfed75e2b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728195935.30394023966/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "50b5b890e48b3eebf3fcd09a1f624f36446843c2f4fa8aecddbf005d8eb03571"
        ),
    ]
)
