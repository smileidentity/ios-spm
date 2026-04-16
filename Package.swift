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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416182106.24526756188/UseSmileID.xcframework.zip",
            checksum: "d75e39b2396e28e6248e3e1b1cdacf039f1b8129d836ed46e17f44dbe80fb37e"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416182106.24526756188/UseSmileIDML.xcframework.zip",
            checksum: "32f0701ab079b132fec51362d9c84293ac4b555006f5ae3c3dfc1804a106c02e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416182106.24526756188/UseSmileIDVisionFace.xcframework.zip",
            checksum: "92bcf1c9670fcd59ac97398ad472a6a4692ed9ad1fe69402999867e0d1dff151"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416182106.24526756188/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "8107dde680e59219e44787acbc788b5744a05a4fe6f2c30404b26889466c172c"
        ),
    ]
)
