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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260727122149.30265314810/UseSmileID.xcframework.zip",
            checksum: "54e51e05f7830a066b68bb3f9e446d1aa465c7b615407244564f6e4718cb06f8"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260727122149.30265314810/UseSmileIDBridge.xcframework.zip",
            checksum: "983e97c399d235db995e1964b39060dd1edb12a2ef83430f4c17e210157495cf"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260727122149.30265314810/UseSmileIDVisionFace.xcframework.zip",
            checksum: "b3a9e0a0abceca1fd05c3822d905ae0cdb2727e9e17e2ea12d077bbcb7e22f28"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260727122149.30265314810/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "5f8ad70df30b021ce1bcce8f0296eb4307f041f8cfd1f11cca6ba73acd89a218"
        ),
    ]
)
