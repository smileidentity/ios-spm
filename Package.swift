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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614135449.27501013302/UseSmileID.xcframework.zip",
            checksum: "36cf026bfe4ff0098ca749a01964ba5c79f53632701ca015a9a36550a432a680"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614135449.27501013302/UseSmileIDBridge.xcframework.zip",
            checksum: "3195bfd85eddba7c0888a7e15ae5dff81e981c634df64b3bdc966c0a91057f92"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614135449.27501013302/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d7c08482392095702c3c7a92a1f5d6438c5fa0026f1c2fbfd53a7647b088bb10"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614135449.27501013302/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "dfacc9dece6ece50fdd1f64da4eba08477cea5ab559f4397093c982592edc221"
        ),
    ]
)
