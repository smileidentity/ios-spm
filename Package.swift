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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260513154908.25810168819/UseSmileID.xcframework.zip",
            checksum: "11e5f2e643638ab01f81d45f65b7214e99da2353ee23aee952dbf3942ca8060a"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260513154908.25810168819/UseSmileIDML.xcframework.zip",
            checksum: "2e98545ae15a882fc429318b8c0d1192b2674defbdeb7db1c13077083e9c73d9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260513154908.25810168819/UseSmileIDVisionFace.xcframework.zip",
            checksum: "9b913bfd194f8ca574d65df1db66f8ec958f22635d44cc36e187daf3e7bb338c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260513154908.25810168819/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2fca87a87aecc53a807d93b502729c329b4c7dcb69ff6265884c74ee4e0566fa"
        ),
    ]
)
