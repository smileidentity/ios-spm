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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260810102002.31378320546/UseSmileID.xcframework.zip",
            checksum: "ea2de4f83ebd9cb65ab49e40b9179b0492f364c74aeeb7e2e98dd625b3411df4"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260810102002.31378320546/UseSmileIDBridge.xcframework.zip",
            checksum: "be4dfb06ce9e9031514d9816159f02fc41ade67ad2d9e7d301db6d1ddf5cfbb8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260810102002.31378320546/UseSmileIDVisionFace.xcframework.zip",
            checksum: "8bb3b579826f2890fb497b2f3f370a5b8c6f703d4a7bd546e849fddf34ea10b5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260810102002.31378320546/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ef5a68267684ac5159a04442866381db70cfa9f4dec0d17f36eb800412528f2d"
        ),
    ]
)
