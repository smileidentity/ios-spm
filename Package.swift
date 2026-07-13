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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713140918.29256730094/UseSmileID.xcframework.zip",
            checksum: "a5be94233508e4664ca4a5be272a5ca1b033f366ae8a9bf423856aa0c658b4b4"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713140918.29256730094/UseSmileIDBridge.xcframework.zip",
            checksum: "9e7c0e6a12186c7e0d8fcc2c891ac811196307de88eab5652ceeede359d933a6"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713140918.29256730094/UseSmileIDVisionFace.xcframework.zip",
            checksum: "3ef2115f7e592f6dcaa2ad3ee7c2c4bbf11ad23ea7de8e7f0d7e894dadfee895"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713140918.29256730094/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d661672b53df3260131d5cb6195a91d086a36d5fb573c0249cf39dce81b11e89"
        ),
    ]
)
