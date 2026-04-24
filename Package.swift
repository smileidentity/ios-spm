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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424123709.24889852888/UseSmileID.xcframework.zip",
            checksum: "4fd62e4114c662d229883621f8ee2279680a24cf7d9e520fac3a61f65353b3b2"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424123709.24889852888/UseSmileIDML.xcframework.zip",
            checksum: "9d8916020d7149cc4e383d2dee420b17842d8f4d55cbb764064bd45acba3fb83"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424123709.24889852888/UseSmileIDVisionFace.xcframework.zip",
            checksum: "878722e330ff01bb817a3bdce76ad484b7b37a38faa930e22e8eda75ac20d5c5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424123709.24889852888/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4544947382a3bfa4c689c96da7c18ccb1afb2c4f38ea042b6dc87a22e8c7f21c"
        ),
    ]
)
