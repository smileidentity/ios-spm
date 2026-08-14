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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.2-SNAPSHOT.20260814185046.31830208958/UseSmileID.xcframework.zip",
            checksum: "ccb1b330b07715216ef48907677f5d253cb3e7e759ab849cc3020468a2dc9abb"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.2-SNAPSHOT.20260814185046.31830208958/UseSmileIDBridge.xcframework.zip",
            checksum: "7b54dddbba087c529b77fac6952dc7d5e9bb15a42daac6fe5f768de88ccaad38"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.2-SNAPSHOT.20260814185046.31830208958/UseSmileIDVisionFace.xcframework.zip",
            checksum: "6faf014dbb7c67c96eed79053d5f6cb7c6e6e8cb1e49a9d6e805ab72b28198d2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.2-SNAPSHOT.20260814185046.31830208958/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "1e16fbb34f424b09952d7b8779518d563b60604748c9041d18ebf332ece5d910"
        ),
    ]
)
