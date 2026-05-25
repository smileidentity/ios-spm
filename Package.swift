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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525203433.26418734631/UseSmileID.xcframework.zip",
            checksum: "20a668251cc258e16978fbf44f5589421ec9adead39819f16d7cede6676a36ad"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525203433.26418734631/UseSmileIDML.xcframework.zip",
            checksum: "807f10dcb4e722b439d9676e6aa02b64441d49414182596e1c062668d2132c7a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525203433.26418734631/UseSmileIDVisionFace.xcframework.zip",
            checksum: "73415b4141baf237675fb81613ef5ecf1d19f510dc90951ef6420b277e2c3ca9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525203433.26418734631/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "3caf07d8bd083fb5dc1855bde1428f45e10d082a2af8e0c02a55ab98f6f46586"
        ),
    ]
)
