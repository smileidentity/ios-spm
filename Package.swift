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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601170323.26769601481/UseSmileID.xcframework.zip",
            checksum: "535da3dabac4b204948b7a7b47db8d1091289e212cff67505f2b9ab5503a02d6"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601170323.26769601481/UseSmileIDBridge.xcframework.zip",
            checksum: "5c71fdd3101cb4a956b5b345c9eb6c32e1737eb1a71ba8508117441fdd9e9db8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601170323.26769601481/UseSmileIDVisionFace.xcframework.zip",
            checksum: "aefbf5b0f1e1c8b8c85c3515810638c4c342cfb0b35dce860eb141f0244b3df2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601170323.26769601481/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4f1f3ec9c86f5c3d0311e8a74cbf8fb460a7be3ef62ff6885cbecacdd7412c06"
        ),
    ]
)
