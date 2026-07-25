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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260725113743.30156448962/UseSmileID.xcframework.zip",
            checksum: "0c11df2511e6f17e0824050e51ddb8b1a9834f8f81b95b542fba57b5d880bfcb"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260725113743.30156448962/UseSmileIDBridge.xcframework.zip",
            checksum: "591b723cc82feed18d99d0adfb02c6e97094b851d9895fc28deb43c71a6a69ce"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260725113743.30156448962/UseSmileIDVisionFace.xcframework.zip",
            checksum: "fc54a044d9d0990d8da2d34b566fe96f1dc317ad8dc120979d4602a942a4a368"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260725113743.30156448962/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "468614d668e4284262c2a04d4f766b83dc8e50d41a804b5be5ad965d50ad8568"
        ),
    ]
)
