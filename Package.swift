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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613121333.27466320588/UseSmileID.xcframework.zip",
            checksum: "9c281a780c2c84e8aaba5fb28f9efea7ae152d114e9717d839a777295f1cdaf0"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613121333.27466320588/UseSmileIDBridge.xcframework.zip",
            checksum: "eea46f41690ae34d6c32c0d2df8047ac4c7eb4a361dd286223c044d85a1d0aed"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613121333.27466320588/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d9c67933c602c8db70b9b8937749d929eb7637068ee047fa9b3791c9927857ce"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613121333.27466320588/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "9dd6a0552cb6f24dea40e11bb06e79a9a96cf494301624c1d28d4a8fb7e4c5bc"
        ),
    ]
)
