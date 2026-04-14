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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260414104152.24394576063/UseSmileID.xcframework.zip",
            checksum: "7f12a4fda07a71847e8f59acb01979eb5355cf801ac3a2e00a672f243de916e3"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260414104152.24394576063/UseSmileIDML.xcframework.zip",
            checksum: "975b737bf0d55d16ff0c3d0ccf8bb75a5425db554bf705665ee24953feb9e85e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260414104152.24394576063/UseSmileIDVisionFace.xcframework.zip",
            checksum: "453b0f7022d3f09ac67fa24ddbb3856a0dc7b905af7b11f1c687da6b1dcefe2e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260414104152.24394576063/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "c4b556d0ca73650fc5d8123a21d8cb47eb5f66be43d8ea8e741aee4ad86e41ee"
        ),
    ]
)
