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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604075735.26938792060/UseSmileID.xcframework.zip",
            checksum: "8e4751c11e06ab27a1bc52a26357fd957882205134c87263a21e288ef01ff46e"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604075735.26938792060/UseSmileIDBridge.xcframework.zip",
            checksum: "6bb15196f36f2257e2d8a1dcfd776c220d2b78faa425db37a02fd709adb193fa"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604075735.26938792060/UseSmileIDVisionFace.xcframework.zip",
            checksum: "c60c3a290f6f182f2ce490d0f0205e1bd46fdc8dcc1f1c40d170b0d7157c6367"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260604075735.26938792060/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2131321505859af18665bc732daa26b55f5e71c803f2de524e2c846176568f30"
        ),
    ]
)
