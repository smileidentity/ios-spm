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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728194523.30393028077/UseSmileID.xcframework.zip",
            checksum: "e405bc996c65ad5335ce6a64475b7433e7be4add93b91bf24059c3b39e8cd117"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728194523.30393028077/UseSmileIDBridge.xcframework.zip",
            checksum: "8931ec0a74ba11895ac107ddb93399e6f33fbb0d0659063bcdb9ae6f940b471e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728194523.30393028077/UseSmileIDVisionFace.xcframework.zip",
            checksum: "24e2e0fc9ea1a650bf0d432b5ac23edec8dd7508892642169a29da8ecd3badce"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728194523.30393028077/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "11f2166b9bd3c4fd2454de76536e703180cbde75314a2a016cf6417f1a5d296b"
        ),
    ]
)
