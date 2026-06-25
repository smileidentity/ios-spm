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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625060449.28150376253/UseSmileID.xcframework.zip",
            checksum: "9ad391fed6e3e55bd99c79c99f22abe6186793388e36eab6d2f3fd3fec1d6d14"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625060449.28150376253/UseSmileIDBridge.xcframework.zip",
            checksum: "4c596d8093b594992814ed4a11cf1ecc5814c5def221adde4b039555b1d18cb2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625060449.28150376253/UseSmileIDVisionFace.xcframework.zip",
            checksum: "71c4721d2fd2b663a8edca05859d63424a0f023947dbe9a9b993b5aa564581a8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625060449.28150376253/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "e04e828284f177aa77726b05c8e214cb72ad6bdfad4a74cf89a7acdd7fda5386"
        ),
    ]
)
