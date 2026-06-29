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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629164224.28387976229/UseSmileID.xcframework.zip",
            checksum: "40164ec93db9128454c0270aa39c062db38e3bdb6c28b3ab1be0d2af50939574"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629164224.28387976229/UseSmileIDBridge.xcframework.zip",
            checksum: "3b489d8a2bce1ee4342c5655612c132601b949bd5b0b499c58602ba1e77674d3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629164224.28387976229/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d83b3b5a872814fa21230c3f31400eebb3f2bd9880e1f20aab251d710ef746dd"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260629164224.28387976229/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "9d3e19da5a82b061c7ba3f42fce57028cc91a61be47f7284fe8103469a611eec"
        ),
    ]
)
