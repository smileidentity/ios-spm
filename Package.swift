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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260721060849.29805924285/UseSmileID.xcframework.zip",
            checksum: "f33acc3ac6ba012bcba3f507c99293e402c5caae79aa7861dd0df640c5210ada"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260721060849.29805924285/UseSmileIDBridge.xcframework.zip",
            checksum: "ac5fde1e1391771de6a1cca7167b476526dfbdf3fc86a00f999a05688180aa4a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260721060849.29805924285/UseSmileIDVisionFace.xcframework.zip",
            checksum: "5669d8200a45573e7dfe09542a35d114a83cc85f23fe6b4f53e3793ed150941b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260721060849.29805924285/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ed435cdae4fe5be8564ff9421784366df6c9cb6500853b5cb85778d62422ec71"
        ),
    ]
)
