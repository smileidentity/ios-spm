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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630013503.28414268060/UseSmileID.xcframework.zip",
            checksum: "b351eaa10f4efcfcb4cfbe968f904c9b7026e4fa12633c4b551596753a076146"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630013503.28414268060/UseSmileIDBridge.xcframework.zip",
            checksum: "56ba8b4a2f0c6b7d1c95ce8e89fec2a178905add6de353bc0b590d844f3b6d57"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630013503.28414268060/UseSmileIDVisionFace.xcframework.zip",
            checksum: "22e86ab11228843c144537192f09c39f2945df8b9af8a9ea43f3134411c96b4f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630013503.28414268060/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ea55348d0e5c805a59a675e81bf433d8d0567be5a7a9321a8ffb88384cbed9db"
        ),
    ]
)
