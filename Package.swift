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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521181852.26244796242/UseSmileID.xcframework.zip",
            checksum: "4835c5e2c1d62d56b58dda792d445452d9f4f1faba488746627c77b7e8707ce7"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521181852.26244796242/UseSmileIDML.xcframework.zip",
            checksum: "acb09e0d089d92e04e7f5ae77a31d44ac1f8552e064a59706d3f5fe1cc5c7bbf"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521181852.26244796242/UseSmileIDVisionFace.xcframework.zip",
            checksum: "efdb7188de2261de0550a098c0fc4c3097b7635c70491a644e9d1c513692e893"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521181852.26244796242/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "b295bf32d61e720671ff89e94cd283728c7bdfb5ffee91c0540c67d834e9ba8b"
        ),
    ]
)
