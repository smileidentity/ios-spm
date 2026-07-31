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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731111546.30626138598/UseSmileID.xcframework.zip",
            checksum: "a9008f91af3df50357b410a6ad09322f391f380dea6cfbeef5cdd86b1a35f8bc"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731111546.30626138598/UseSmileIDBridge.xcframework.zip",
            checksum: "f34a4cb6ce1b70ae2a83b1497abd342bb45bd140f31748e196e1620a4e409d58"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731111546.30626138598/UseSmileIDVisionFace.xcframework.zip",
            checksum: "035e1392348326bbbdedf362cbf4a4877ba45ba0cf1285a856d6b2bab2670513"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731111546.30626138598/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "19f85ce6ee7d2d9fe09ffd926eb4a0b33e0ed816d88f4d70c733bc4c82da5b2f"
        ),
    ]
)
