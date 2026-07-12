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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712094041.29187869485/UseSmileID.xcframework.zip",
            checksum: "d87a2efc90085d2a791d1356b35c3f0052e120ab491c797fdbcc8fad65ed3dc0"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712094041.29187869485/UseSmileIDBridge.xcframework.zip",
            checksum: "b33976eb61b9d509235a2cd667087dc8afae6c59e4e4b14f9c438e26cb76180c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712094041.29187869485/UseSmileIDVisionFace.xcframework.zip",
            checksum: "f1be0a327d74d82f0662e638c5eff9dc129070f14e27e27bb20c3f2947ebc4ed"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712094041.29187869485/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "004737b1d98b70cd33102eb4bf8a95fea0774d6018361eb97f103246db471150"
        ),
    ]
)
