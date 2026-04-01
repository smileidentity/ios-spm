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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401135736.23852366899/UseSmileID.xcframework.zip",
            checksum: "e46b6ae86726a3738d7706a89997a437837d5261426fee04cbc511bb66009226"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401135736.23852366899/UseSmileIDML.xcframework.zip",
            checksum: "643d739bad73c9b033968c22aa8fec06d3163fca065bf0ad3452d3229a7829c7"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401135736.23852366899/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e4d9caf0ffd7d58926f858959c72c1084f5856dd65f0eb4c40d43f40500a0745"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260401135736.23852366899/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "c1b0a4b63646495e990657f8bcd55db38a4d481c82eaac45ba96d7284c45ccda"
        ),
    ]
)
