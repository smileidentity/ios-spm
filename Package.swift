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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624071636.28081931963/UseSmileID.xcframework.zip",
            checksum: "a6c207beb7e7f648b9666f5cdf8175bffc12afad4881075be80ee88856afa934"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624071636.28081931963/UseSmileIDBridge.xcframework.zip",
            checksum: "a978c8c11e7f228e78c7d48da1efe6ba47dd5da215d1923733d23172d175dbf7"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624071636.28081931963/UseSmileIDVisionFace.xcframework.zip",
            checksum: "1dfd08335ac231d94f3c7ae6364cc14bf735cd3609ddc00f9ab4fcbe4c8e5678"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624071636.28081931963/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "5326df6b30661c47c020306dbaaabebfca637550cab53863e4c63a07881bcf83"
        ),
    ]
)
