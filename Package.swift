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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260405104611.23999912064/UseSmileID.xcframework.zip",
            checksum: "91c3468dc5a2bb8f5418680c1ce9971e3e87d092b2a53dacaf85a51b75179939"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260405104611.23999912064/UseSmileIDML.xcframework.zip",
            checksum: "64ce658d4db98582f7c0e9d1ab5c705e4798b42da3f2988994fc77e8faad7c7b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260405104611.23999912064/UseSmileIDVisionFace.xcframework.zip",
            checksum: "438a6127dd13dfdf7103baf517cc04b71ba6537fb05e2a0347a1b1e5838cdffd"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260405104611.23999912064/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "3dfd64df299c602b1b0eb6345d400e8af3f069ef6c3ddea83da4f187eebb9b10"
        ),
    ]
)
