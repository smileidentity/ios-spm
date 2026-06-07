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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260607213229.27105428618/UseSmileID.xcframework.zip",
            checksum: "2410e8f5ce292fe094d7c11ae50bfa25e86744ea816fadf8abb95a4cbcdcda48"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260607213229.27105428618/UseSmileIDBridge.xcframework.zip",
            checksum: "5603503dfdd40105c2531103f1ae4ddb236e6c85c91075bc4c92b3ccef57e421"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260607213229.27105428618/UseSmileIDVisionFace.xcframework.zip",
            checksum: "c7469e85d2f886e78cd3943847f5fc1fa97e5c3a11a03e3e693406a8d3122464"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260607213229.27105428618/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "b671fd4e8936ec03cf320f4638390c0c3e7f9c3202c52ac930cb5f4b0fe15ed9"
        ),
    ]
)
