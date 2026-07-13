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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713100958.29241768382/UseSmileID.xcframework.zip",
            checksum: "4373b091431ea60afa3e1addeaf4fc888a5e601825aa9f346f4ea04527b103a3"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713100958.29241768382/UseSmileIDBridge.xcframework.zip",
            checksum: "784a18a1fb3339f69780338c10d02039fa88bda804edac4bff6f825c2193c7d3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713100958.29241768382/UseSmileIDVisionFace.xcframework.zip",
            checksum: "9e8d1d50e5585bee312466f2f73ce9f49c7303f316f8e053990d0cc942db1e2e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713100958.29241768382/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "e2b3ebe6c7a6712fb5d9e5036ab6f1e3b7d7105085a9a8c7b8160ac5175b53e3"
        ),
    ]
)
