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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260729111727.30446707709/UseSmileID.xcframework.zip",
            checksum: "55d933f985b957a3e3ab8d92aea05381236993e7a04dd6d769b40af1fbb35aab"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260729111727.30446707709/UseSmileIDBridge.xcframework.zip",
            checksum: "b29bcd4559057e3029e4b9ea058a662e631086f5a719b2262bfc54591e8d2f3b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260729111727.30446707709/UseSmileIDVisionFace.xcframework.zip",
            checksum: "f11354f04e01fe37fd1bc1f087e0404fd1f6db2efca2b6f325174ea76a943c19"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260729111727.30446707709/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "43400f47bc0bdd5fd26f97c6d7dc12f48548b1e3dd15138f58b8cf7a4c10570b"
        ),
    ]
)
