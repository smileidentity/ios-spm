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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423105341.24831233771/UseSmileID.xcframework.zip",
            checksum: "1f86745e553781ad814e8bc8476997e7e7be277716a09f29731ee7a731e8af5a"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423105341.24831233771/UseSmileIDML.xcframework.zip",
            checksum: "9c2f3bb177bf9cd55842bc37c86152d487a3d859fb8ac06a5bf545f7139762bc"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423105341.24831233771/UseSmileIDVisionFace.xcframework.zip",
            checksum: "cea304de44631810244db4a5dca198a04ad6ea2b117c0d05125de331cbf8ded3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423105341.24831233771/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d4a79d9808950855d72164d01009d5b1dcd9279f64534893fad9080c5c309ee1"
        ),
    ]
)
