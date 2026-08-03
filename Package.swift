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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260803204331.30851141044/UseSmileID.xcframework.zip",
            checksum: "efa02c0a8b52f8de3eb384b6394d7c193e6ae0071d1721c0826cd0fcb64e4d7c"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260803204331.30851141044/UseSmileIDBridge.xcframework.zip",
            checksum: "f09a5373752213b2f8267f90c7d15b831943a205362cdf8416fa9ffcc06bc425"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260803204331.30851141044/UseSmileIDVisionFace.xcframework.zip",
            checksum: "0478c3a349c202fb09cf8ac3da47009d9e5a4cdce955eeabc03e2178e6deacf9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260803204331.30851141044/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "29b8c16773c23633d144102ab3b8a1786b891120a963329e1fde0971db53de81"
        ),
    ]
)
