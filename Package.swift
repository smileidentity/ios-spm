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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714160445.29348122628/UseSmileID.xcframework.zip",
            checksum: "c7098a10e490214be1fd537cf4be4d252b081f4c13c3826b037d3d462d741933"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714160445.29348122628/UseSmileIDBridge.xcframework.zip",
            checksum: "49f621c1361e8270bbe5ca1278cff6259d84a38535436a7ea332b48ea327c960"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714160445.29348122628/UseSmileIDVisionFace.xcframework.zip",
            checksum: "94d87a08c9d24382dbd1753f6f21239ce6d1a37bea52b933df5d1ae9757bca82"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714160445.29348122628/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "829be26cff945255d2d3fbbdde4e47146ac89fe97365917d922ac1797cff522c"
        ),
    ]
)
