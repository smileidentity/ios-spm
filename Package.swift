// swift-tools-version: 5.9
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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260610195451.27302283424/UseSmileID.xcframework.zip",
            checksum: "365456668dda95dcfa23951f3c1cfc6492e6e8e7fef29aec32a48af33be732f5"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260610195451.27302283424/UseSmileIDBridge.xcframework.zip",
            checksum: "32d74b6c6e80986fd26950a3f84051d3956f55f61723db763dbf5c1891f4195e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260610195451.27302283424/UseSmileIDVisionFace.xcframework.zip",
            checksum: "32d6add93a65956f48a05f70081596bf4aefc50d9ee93aae43121bc7528f64ef"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260610195451.27302283424/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ed354d2c849cca9a8fb460b6965f9474b50996e861ab46f9436077f7613c0a32"
        ),
    ]
)
