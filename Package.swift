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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730111052.30537296522/UseSmileID.xcframework.zip",
            checksum: "259e83acec1f4af38713ddb7720554eb6571842865322695728e9835b013aacd"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730111052.30537296522/UseSmileIDBridge.xcframework.zip",
            checksum: "162ede407ca774841d8ead52c9d7ab8db2ba17e737def20c260521448cdf11b7"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730111052.30537296522/UseSmileIDVisionFace.xcframework.zip",
            checksum: "0dca1d90f978a14049735265226b4bb0e1896777ad5ddcc31295a9c2681f189d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730111052.30537296522/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "488ed3a58bebdd4ba6c6e9f2ec24a6736d7997e43b7e54d22d6c9fbab770461c"
        ),
    ]
)
