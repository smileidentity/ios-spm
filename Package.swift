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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601202603.26779943120/UseSmileID.xcframework.zip",
            checksum: "763a78de5c9538cea563cf049e6d434559adb4cf7beff8e809a269c46d9c540d"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601202603.26779943120/UseSmileIDBridge.xcframework.zip",
            checksum: "3616c215c390e71874014753dad7b02ce98fd3d0d027d9afc1e007d112b241af"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601202603.26779943120/UseSmileIDVisionFace.xcframework.zip",
            checksum: "5ce8e0c5b8b799593e4538a27046ebc026b952b0d45a04f4e901b8189969102e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601202603.26779943120/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "357048d3831cdc6045ec3d3b978df2ec89328382a45c4142680781ee495d1772"
        ),
    ]
)
