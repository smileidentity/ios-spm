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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601212059.26782793679/UseSmileID.xcframework.zip",
            checksum: "adbc8bcb0d5674599bcad7c7beb5d49251eb5b7d340b5924d10ded7cd281bb73"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601212059.26782793679/UseSmileIDBridge.xcframework.zip",
            checksum: "8edef9a34dff4ea403744f3addb7b8611c1d38d127b77d348ea0253c85187de4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601212059.26782793679/UseSmileIDVisionFace.xcframework.zip",
            checksum: "49716dbe08dfe6817cbf99e54597f7fb5e2b9fc586aa22a72700737ff9836029"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601212059.26782793679/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "1c4dbb47a8cd1f9ac70b68aca00c6fb67621aa18ee7fe4576a4b49dd5e92ff9c"
        ),
    ]
)
