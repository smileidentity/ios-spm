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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614134747.27500834817/UseSmileID.xcframework.zip",
            checksum: "271147f666736a9355a9e8c7d972f1f3266300c181bad83141d479e0eabb679f"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614134747.27500834817/UseSmileIDBridge.xcframework.zip",
            checksum: "544a2d9fdf48d401a42781330ab594d2ad5498dd99862da0f1773463201da744"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614134747.27500834817/UseSmileIDVisionFace.xcframework.zip",
            checksum: "5c4547a5bb4c1048cec7a3c7c976787e11b67637dfe7b2f35affa7b71ba32856"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614134747.27500834817/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "1819129a5a5a2ea871b3bc2d7cbf89bef3fbaec6a13d61510a2affebb26a3a3b"
        ),
    ]
)
