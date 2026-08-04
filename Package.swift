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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804111100.30903442414/UseSmileID.xcframework.zip",
            checksum: "916e7f18efbbc93ff650e3c648ec4388ba2eac9fc1da1aefc0a8ff80536fc4da"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804111100.30903442414/UseSmileIDBridge.xcframework.zip",
            checksum: "b9529f1ab976cd16e0ee7754682d6672087c3c062aeb9edcf26deff28e34248b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804111100.30903442414/UseSmileIDVisionFace.xcframework.zip",
            checksum: "ec299d5d9b292f231a0342ef7bb5317277f0204f4d80f128cf2c70c0e42ad8b3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804111100.30903442414/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "979366a0f9b0512ce02b8ec6a79506f9c993513868c659c4b9fb006a4d6a77dc"
        ),
    ]
)
