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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714134725.29337738666/UseSmileID.xcframework.zip",
            checksum: "c276eb44060e61b3a9acc726854869f16ed0715757fa8d59f5b6d4f6150647d8"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714134725.29337738666/UseSmileIDBridge.xcframework.zip",
            checksum: "922ade79817dc778b6a925ec4c1c1758290bf59dadd17bf6cdfc6e877d6c5628"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714134725.29337738666/UseSmileIDVisionFace.xcframework.zip",
            checksum: "56293d7048a21eabc8867da84bb37cf05e4dd1cc4ed197c36a3ab36599f62188"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714134725.29337738666/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "38cbf37ff3cee0f18dbdbac97b073373c02c90f978f28144b66b7d6808772dfa"
        ),
    ]
)
