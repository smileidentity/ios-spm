// swift-tools-version: 6.0
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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731104743.30624521661/UseSmileID.xcframework.zip",
            checksum: "fc4441cb2806dcd82de7d765d32765a7c4ee50e0a0e556a3c722c89c941fce41"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731104743.30624521661/UseSmileIDBridge.xcframework.zip",
            checksum: "b8c2eed2f6aa02d75a65e9b1e13bfd86af557dbf922424fc435a3db7ba26d9f0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731104743.30624521661/UseSmileIDVisionFace.xcframework.zip",
            checksum: "61edf245dc2ab42da179f54e89ce8af103c7d67561e3cb6a11f162414171820e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731104743.30624521661/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "cb4b505e28c70288b80e5fd25de26a6dfc2e0c9459c9e20273028ad983f451ba"
        ),
    ]
)
