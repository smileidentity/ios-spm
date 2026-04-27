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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260427162921.25007091897/UseSmileID.xcframework.zip",
            checksum: "1858faae7d4823eba3be0e0990a3945e85bfb19005be67fb70434ccdf3fb8e01"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260427162921.25007091897/UseSmileIDML.xcframework.zip",
            checksum: "b40b6177cf032ade0cbf2d56944f2ed5f2f36ac9545e47a35cbfb80606d0b648"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260427162921.25007091897/UseSmileIDVisionFace.xcframework.zip",
            checksum: "220881db19b383a6a38431e1adfe8daf62be1c003e20cb30794b7faa8abac93d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260427162921.25007091897/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "297299f13d5d7c6e85cde1f0bb7e9a7065b1b63dc04c599b5cb3094a850dc0db"
        ),
    ]
)
