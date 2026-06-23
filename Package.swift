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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260623100901.28018648805/UseSmileID.xcframework.zip",
            checksum: "3ee1faf72bcd1cbe620641e54bfee9e938741f01e65869094f9ba797b6bfc2e2"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260623100901.28018648805/UseSmileIDBridge.xcframework.zip",
            checksum: "1ebfe3a36f80921884586c66d9d2e6b179851653461857eb4eb51b19fbc92107"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260623100901.28018648805/UseSmileIDVisionFace.xcframework.zip",
            checksum: "9c3eed38ccde4845e597fb44cf202fb91439be67d5698bc07431438fb335f5e3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260623100901.28018648805/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "c2739480b095254bf5c03bab4916036c9eebce8055aae89359eab86d3b54d51d"
        ),
    ]
)
