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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423175211.24850316206/UseSmileID.xcframework.zip",
            checksum: "86a3ecffaed3e37b2036eb0b158f684b9c35cb26152d990f431dc452f39e2896"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423175211.24850316206/UseSmileIDML.xcframework.zip",
            checksum: "21c6e6b43ae3dc7abd45aa9bd222d513cc94c2687ab3aceac589c27ff4e40410"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423175211.24850316206/UseSmileIDVisionFace.xcframework.zip",
            checksum: "23e7fc77a61b91fb00e6cd7bd5b449fc9c306ceb437316fdf46eb51b2c33153f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260423175211.24850316206/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2c8e9a633101814fc837e957557d35d45e2ea1e69129da992a768457e0509f6c"
        ),
    ]
)
