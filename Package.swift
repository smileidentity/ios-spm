// swift-tools-version: 5.9
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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604105023.26947171737/UseSmileID.xcframework.zip",
            checksum: "815d1788c232688a60c814ef900babecb26f8724db03020f3ee0a8966365935e"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604105023.26947171737/UseSmileIDBridge.xcframework.zip",
            checksum: "48ff9bb2145e174d9c505d7f186ed79c467a8ac40d0e42ad189bd0e7f55abb57"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604105023.26947171737/UseSmileIDVisionFace.xcframework.zip",
            checksum: "2877d6007eecf4c2d6646014796884a8817e866efabd58911257cf4a18366f94"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604105023.26947171737/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "b5f3efc9870bb24cb65aa8634b2a709a73e252308623fe1c2369a0d7649d130a"
        ),
    ]
)
