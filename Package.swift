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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260805164337.31026303440/UseSmileID.xcframework.zip",
            checksum: "04af13d7a65f670fc1f9c9ddf48f9b4a2e2600dba43a9c1cc26dc5ab93790d98"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260805164337.31026303440/UseSmileIDBridge.xcframework.zip",
            checksum: "5f282b450845d5a69d4b4e4f1ea83e05eedf83cc647fefd825eb2e417c7804d8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260805164337.31026303440/UseSmileIDVisionFace.xcframework.zip",
            checksum: "f2263eb18ceb059ed95b5aab66dc04844328cc8695671fc62fa807eb2d39fd2b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260805164337.31026303440/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "45d9f7d2e490af1f0ceb2fbb98f03d1f2c985cdb04b3207f762eb93fc4eaa02d"
        ),
    ]
)
