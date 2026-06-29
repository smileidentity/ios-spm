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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629150000.28381517160/UseSmileID.xcframework.zip",
            checksum: "894a3fdcdc4bdf3339822e9a293f7512612f9f0437ed55a50ccea02c30a691bc"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629150000.28381517160/UseSmileIDBridge.xcframework.zip",
            checksum: "a30fd5cb23d99626fdb5e8f93f8e57a67eff9582f3619a8a990224389df3be89"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629150000.28381517160/UseSmileIDVisionFace.xcframework.zip",
            checksum: "4a44269ae305e48ef8ce8f063a8fbd23ec18a33a541fde1ff29b87d7964411c0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629150000.28381517160/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "fb179311fc0638e70845f5dd9b0409ec7be8e97589f418585792024f05caddb6"
        ),
    ]
)
