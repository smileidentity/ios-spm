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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706190050.28816030656/UseSmileID.xcframework.zip",
            checksum: "96863c9216e6396230f614e7ff30de4afc5af2cb7605d86b0e7dd4405a311f76"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706190050.28816030656/UseSmileIDBridge.xcframework.zip",
            checksum: "eedd8c1721ad966b4d64b56bfa032810d4e5daa424efe44738aee0bdab8f7c05"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706190050.28816030656/UseSmileIDVisionFace.xcframework.zip",
            checksum: "f1a6f815701c62047d5c19f823db8da2c43d2af2c79e9b4e5ba050ee4100c928"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706190050.28816030656/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "868c5665f86ceb01bb806ef1415374161bf14bf4dcc971c53194c34f84de7118"
        ),
    ]
)
