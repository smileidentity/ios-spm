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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630221428.28479322443/UseSmileID.xcframework.zip",
            checksum: "039c88569cc8de9ef8960230ca88f319db1977a65790d391f66f4a0696816fb2"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630221428.28479322443/UseSmileIDBridge.xcframework.zip",
            checksum: "594bc2ed5b3ee46924d63a40041a5d3bf212d129c94205a24bf0615d6f684ffb"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630221428.28479322443/UseSmileIDVisionFace.xcframework.zip",
            checksum: "a1a0461ad933459275cdc67cbb92bb9371b8bd5f1921f586b0b4855470c12876"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260630221428.28479322443/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "0c80d354ad774df54ff8fd36ba68912398bf71b774dfd6e2910b7538fc850b90"
        ),
    ]
)
