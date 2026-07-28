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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728185721.30389186035/UseSmileID.xcframework.zip",
            checksum: "25c7c627854f18c58588238cfc9c03bbbb1d56ef5cb6b4fa2b33dac51c892492"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728185721.30389186035/UseSmileIDBridge.xcframework.zip",
            checksum: "c4b52e50d797c2ebb1a17ef08c07eea67d306589fdf532aa44ddb17eb1f31790"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728185721.30389186035/UseSmileIDVisionFace.xcframework.zip",
            checksum: "93942547b7e0fce75496007a070e51420c9166e074fca87b875045660ef4fdc7"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728185721.30389186035/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ba16f59bc6c4cf50f1a8f6d03aa4942ac7a1860dc821e5cbd4b6dcd23d932040"
        ),
    ]
)
