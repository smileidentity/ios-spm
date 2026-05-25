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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525141422.26404899268/UseSmileID.xcframework.zip",
            checksum: "df0407a4cbde14b599fde0559ae149f63c1f25a49ef048ea2fe782e16a47c8c9"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525141422.26404899268/UseSmileIDML.xcframework.zip",
            checksum: "1bc5446eaa8943b2da67c5f07a146dcff6b6746f88bbdbd0815fe51321d0d18c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525141422.26404899268/UseSmileIDVisionFace.xcframework.zip",
            checksum: "6efa9c411a52332d6517ebeea423f2bf606b005642a24a8b72e1ef577f6bf64a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525141422.26404899268/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "64204ee497cbf4204edddc675acc1184a595846ba7fa112b4af86530c87f580b"
        ),
    ]
)
