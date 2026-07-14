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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714174850.29355063447/UseSmileID.xcframework.zip",
            checksum: "eeac1c965077ad7d46176798811ad2ee5de2dcc0c7ce818dcf1e9e393cfba9b2"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714174850.29355063447/UseSmileIDBridge.xcframework.zip",
            checksum: "32790a38ae9ab1c46388d32a610352cabc06c1bb37c384a994cb7a901b054643"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714174850.29355063447/UseSmileIDVisionFace.xcframework.zip",
            checksum: "611987269a8cda7f5daeef5a96a19fc5afae6bdc627927864f58755602aa87a5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714174850.29355063447/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "44c8c72aea2ba87fe40f6f94c8b971bc23f9a20db3cc5db2e662cb48b0e195b9"
        ),
    ]
)
