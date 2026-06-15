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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615081733.27533209458/UseSmileID.xcframework.zip",
            checksum: "9beed9eb5735f5c19f2489a1d420bccaa97623ba213be74561226be8ab8e57f8"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615081733.27533209458/UseSmileIDBridge.xcframework.zip",
            checksum: "d036ce945f37093490532e4c20d2ec83dff4153f490e21a3607e9b7a7c54d70a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615081733.27533209458/UseSmileIDVisionFace.xcframework.zip",
            checksum: "72171f8abc00997fe89f9686a52933d137586a9eb3496e7ed029790e76d92729"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615081733.27533209458/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "f733f5400224fc83c15bf034e7995e15553fc14dd252f0a02b99e622242be415"
        ),
    ]
)
