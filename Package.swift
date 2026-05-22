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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522071338.26273919548/UseSmileID.xcframework.zip",
            checksum: "3b3c760f02f46c2641f64ba055f4caac75410d1212cbdb3882f84870d4bf73f6"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522071338.26273919548/UseSmileIDML.xcframework.zip",
            checksum: "9586274bc826169ed02477dc7cee1b37ad64922c84af6884c08b7c267af56eec"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522071338.26273919548/UseSmileIDVisionFace.xcframework.zip",
            checksum: "2fe261e116fec691a2d982a869c38f8da6752beca321de6a91f5a2c48d0e8d87"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522071338.26273919548/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "cfe6fc9c3dd576fc3a4128b68c242fd3412f4d1c2fb6fc397faf6cd52d16d8e2"
        ),
    ]
)
