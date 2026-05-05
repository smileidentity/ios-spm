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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505183840.25395202296/UseSmileID.xcframework.zip",
            checksum: "c0d6ba3abd5cfa1130d68ab70bd56514797a5c535eb9d7cf2c41819064da680e"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505183840.25395202296/UseSmileIDML.xcframework.zip",
            checksum: "6fd11485e7eed711227cc7fce55877e2fb780b7e33d2a57b35522a8acb44a2ea"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505183840.25395202296/UseSmileIDVisionFace.xcframework.zip",
            checksum: "9d890319b3fb58acd52d973b2f7fc58dbefb8f0a29568d28868cdb47df85c657"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505183840.25395202296/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "3817a1144a76139250630aae7d46996f3d5d2ddb92bbf12b5140f91b6df15062"
        ),
    ]
)
