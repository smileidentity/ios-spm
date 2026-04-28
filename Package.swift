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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428184543.25071363792/UseSmileID.xcframework.zip",
            checksum: "adcdeaa65d4ad5990b22260d094eef94a12dfca7d260cb6a17be41a5d879e520"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428184543.25071363792/UseSmileIDML.xcframework.zip",
            checksum: "906c7f1ed917b6bb3cbd6929e0cb301bd5ec6ad5f34692e72c0e53d9b415ec7a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428184543.25071363792/UseSmileIDVisionFace.xcframework.zip",
            checksum: "12c4a9ee0933451fec7258bf3d40109614996a47a36cfbe9edbed80d781d0bda"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428184543.25071363792/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d616b2f4210fcd1673bc89685ffaf403b44bfa0debfc0c570e80ad31ab6abe45"
        ),
    ]
)
