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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614200709.27510548587/UseSmileID.xcframework.zip",
            checksum: "7b9a3001e9e1b22100d53f94fd4d67e74dd5ce4547a8bd37d8712a4dc2b746d4"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614200709.27510548587/UseSmileIDBridge.xcframework.zip",
            checksum: "150f5863b5dad765f4906469099c6047a79c0d160dd19f99291972aafba7ef10"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614200709.27510548587/UseSmileIDVisionFace.xcframework.zip",
            checksum: "301c9c1217a23ac86bd1ab69f52201d02f2056f74c01c4991d0a5cc8bd69d17d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614200709.27510548587/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "103d002064d8c6cf4fe253d7973128d8de30a67eaac618906833ddd38ade7416"
        ),
    ]
)
