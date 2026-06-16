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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260616223745.27652743309/UseSmileID.xcframework.zip",
            checksum: "9011080ab4712291b04495fa2c722987d97870239907a781db74e1feb3c8c41c"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260616223745.27652743309/UseSmileIDBridge.xcframework.zip",
            checksum: "111f60a1246367bb6355fb9e154c4723b49f510cf6567c385d664db5d8a28d54"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260616223745.27652743309/UseSmileIDVisionFace.xcframework.zip",
            checksum: "f1fb0b5c4bca09c11cbb6ec41c021347422614c80c7c84ccdffbdb5894d2b33e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260616223745.27652743309/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4f19dff4d1efead67d9f221dcf89c72216509e1163b49f35049100402b53ca93"
        ),
    ]
)
