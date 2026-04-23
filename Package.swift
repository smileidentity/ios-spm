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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423105825.24831437565/UseSmileID.xcframework.zip",
            checksum: "ebe97f15f29588e124116ba61d0dcb82ede22b31527d6fef4a2f386156e97627"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423105825.24831437565/UseSmileIDML.xcframework.zip",
            checksum: "f7074e74360ae97c9f90ac5b3c78218216c4f984adf3b8b050e7d138d6ba8526"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423105825.24831437565/UseSmileIDVisionFace.xcframework.zip",
            checksum: "676526c776b5bce1c0b8b918a93170a69823becb7f010f2809dfb741f63ff5f1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423105825.24831437565/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "feac093a43c7c3031c980a0ac9cdfbc40b49dfcd9ff4afc583908a09f2250ded"
        ),
    ]
)
