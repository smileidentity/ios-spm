// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDML",
            targets: ["UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521111731.26222655297/UseSmileID.xcframework.zip",
            checksum: "8e6831da3528bdbc994946d4ac9d9e6568e3264ebd03a9595a3414bc5ad6c3b7"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521111731.26222655297/UseSmileIDML.xcframework.zip",
            checksum: "8fc47453f65b8d2fadc44a4917db4971850a018e9b97816acefec3a099bf4c77"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521111731.26222655297/UseSmileIDVisionFace.xcframework.zip",
            checksum: "28a0347a1053eb8610ac9b4216ceface4180834f314ace886ca48bbaba36afb8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521111731.26222655297/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2b373d1a086f5ca8f1039ff45bd5ffcc817b73f034ad4e9b09a5893454d282dc"
        ),
    ]
)
