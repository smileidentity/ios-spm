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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714142458.29340493042/UseSmileID.xcframework.zip",
            checksum: "a35d2a825d42c19d4792b4ed1ccd635b85ed69d27226599ffc6c8915d5bd054c"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714142458.29340493042/UseSmileIDBridge.xcframework.zip",
            checksum: "a51db5cef0526ec093c5e16a2f98f883b2554e4480131fc9d985b9b14cb3c6e5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714142458.29340493042/UseSmileIDVisionFace.xcframework.zip",
            checksum: "596dcc064a9e3c07068497859c2fcd537c4f423effb3c2b0dbb6ca0220bb002f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714142458.29340493042/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "96705b672dd4b8a740e739dcc8c6c6cf1a7fbe32cf92ab82e3effc6501c9701d"
        ),
    ]
)
