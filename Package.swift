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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260621121722.27904056173/UseSmileID.xcframework.zip",
            checksum: "d03eafc25de0a2b79aa101b9ca39eebac1b46fb7ee18b87a9bafc43535aeb924"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260621121722.27904056173/UseSmileIDBridge.xcframework.zip",
            checksum: "cca4714e439e9220b9394880d2e0d82252a243e58889eb4d6b3f249f19a7480a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260621121722.27904056173/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d4f677ced5411704e4f7433a7e8f3ef7d4dcae8f9fef3bcdd9c2c83728159d86"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260621121722.27904056173/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "76f8b372d7226c07da96c2d0e8e5c8fc2cd7ef392b0cf4346dfbe0931ac83f6c"
        ),
    ]
)
