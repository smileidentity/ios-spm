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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260406130450.24032885309/UseSmileID.xcframework.zip",
            checksum: "8843565bd206f33b8c3d866ca4f7e3c9337f8f003b7bbba300f6a23acb3bfc1a"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260406130450.24032885309/UseSmileIDML.xcframework.zip",
            checksum: "6a3b921b4e08f3d8fa2daca5084fd512e29ad8abf2330e7345eb7a6609281df2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260406130450.24032885309/UseSmileIDVisionFace.xcframework.zip",
            checksum: "26607f90b5b5b6b3f09c7d348c89ad5214bc61462d3c492f8902239ef488026e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260406130450.24032885309/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "5fef73110febb0adbceb5eefce95b1cf608b2fb5add0ecfdbd1d1667611bcdbb"
        ),
    ]
)
