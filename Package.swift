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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603172337.26901367641/UseSmileID.xcframework.zip",
            checksum: "bcf07d6d9cd5541089d2ab8db3a101ba2ab7bc3e6fa3df740ce1734f20c6d11e"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603172337.26901367641/UseSmileIDBridge.xcframework.zip",
            checksum: "c28ada3c860946cca25ead182dc55c97badfabd036111ad02ddb19f699448ed3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603172337.26901367641/UseSmileIDVisionFace.xcframework.zip",
            checksum: "8a5e7aa0ed8d65e3fda9ee47810f87ed91f158a349bff2567265e1029059c70c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260603172337.26901367641/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "04492ed95f91be6563b07577948e1f2afd644745ef74bef60d52f52ef4814d8c"
        ),
    ]
)
