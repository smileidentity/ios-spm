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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401140917.23852909817/UseSmileID.xcframework.zip",
            checksum: "2942dc366efde5b4dfbb22fe81288e140981cc531bc82ba5a109104810c4a0ed"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401140917.23852909817/UseSmileIDML.xcframework.zip",
            checksum: "fa0a0b6bf7f1ceadeed1efcc8b5526a8b47ee8ce3b85c1b4f0e8ffbe8fd8f821"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401140917.23852909817/UseSmileIDVisionFace.xcframework.zip",
            checksum: "9aafc3d84fb544fecd3241b7fb87f66e4217f14a8f3256e7183b77751ceddd5f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401140917.23852909817/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "83253e47f1dc64ee75e5af035b8a9195d6040f363d4bdf825f1fdf735936c282"
        ),
    ]
)
