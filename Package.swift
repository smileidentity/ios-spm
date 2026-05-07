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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507161730.25508075153/UseSmileID.xcframework.zip",
            checksum: "44dde980a5bc7707c7fa059bae09752f39e0545275ebcec391693ae8a44bfc53"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507161730.25508075153/UseSmileIDML.xcframework.zip",
            checksum: "ea7248dcd0c7ea5bfa9b1506368c094ba6ca300a4d1fd35e3dcebedbd6bd468c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507161730.25508075153/UseSmileIDVisionFace.xcframework.zip",
            checksum: "2bd4fdead19ca3377055dbbe10253e41ae921a5180af8d1288296aff5eeb3860"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507161730.25508075153/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "65db2e81938ec1c869e9195674e2bcea6d07d78f9a1070ab2ee9f952890ae8dd"
        ),
    ]
)
