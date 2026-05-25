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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525195935.26417574654/UseSmileID.xcframework.zip",
            checksum: "9cdaf02c2e963d2634c6a0f1ed3cd61bb764627d940c340478f38ce7e1a1692e"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525195935.26417574654/UseSmileIDML.xcframework.zip",
            checksum: "d08e57a54a739a8ee859623db49815736132899178c757cb71fc59326e3e0ab3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525195935.26417574654/UseSmileIDVisionFace.xcframework.zip",
            checksum: "b055047fdecde9db9a6e4b1155f355dca8b71f1270feef846163f546d10200e4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525195935.26417574654/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "32eaf9bc5ee3480fd399937dc9791242f6d267831b0e1cbb8323aeb0a676fa2b"
        ),
    ]
)
