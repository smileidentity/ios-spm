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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260530100024.26680997974/UseSmileID.xcframework.zip",
            checksum: "258119d5dc1c309f54cd960aa00595a27ccc4a11de82b523e173a801c4538303"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260530100024.26680997974/UseSmileIDBridge.xcframework.zip",
            checksum: "fcfa92d43ab027bfd4a945a8513cc3b53a2a947dbd93a6fcf0d1d3f9d3640f68"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260530100024.26680997974/UseSmileIDVisionFace.xcframework.zip",
            checksum: "8540582e00c3f7b4df9293eabab54f840e950fc0285c2894603d2ef007427a1e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260530100024.26680997974/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4cb17694d74b7cf54c07320afeafe86367e87af7935fea312dbe418aee6a8be7"
        ),
    ]
)
