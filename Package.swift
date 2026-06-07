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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260607101359.27089612216/UseSmileID.xcframework.zip",
            checksum: "5e955d58711764ada4a2a1ae82319b2ed213326ee2df73767672f6179f6fdb06"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260607101359.27089612216/UseSmileIDBridge.xcframework.zip",
            checksum: "53009179c05ca851362f54cab52a9c3402c968173f8e6bab549e392188afc2b2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260607101359.27089612216/UseSmileIDVisionFace.xcframework.zip",
            checksum: "3e74aeaa04983933ae1568b98f5cdd71e34b85a92650f8c7763332f09e36b9a2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260607101359.27089612216/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "6dda45266d772f5015c26f60e4c57ca9eba3f8c0c15418e6e003c496738d9313"
        ),
    ]
)
