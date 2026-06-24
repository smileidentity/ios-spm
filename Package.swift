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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624083115.28085740808/UseSmileID.xcframework.zip",
            checksum: "73d9d88a7e4296913d7f83bfb103f762ce782c2e3627259df44a636d2faf7cd8"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624083115.28085740808/UseSmileIDBridge.xcframework.zip",
            checksum: "a29fbed49cf185a4573ec8bc451c6c8fdcc17f798a4d525e4135ae7e82f7b5c9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624083115.28085740808/UseSmileIDVisionFace.xcframework.zip",
            checksum: "eb304dfbaa729b1ea0ba1974934bf71cb4305b22a42610623f037cbc56355a77"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624083115.28085740808/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "f9f98c7a3180de4ea3eb1eabb8efc6d5f50bc45d985260c6ffe1ef629e6e2ca2"
        ),
    ]
)
