// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDML",
            targets: ["UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413123738.24343731718/UseSmileID.xcframework.zip",
            checksum: "568e807ba2a5e77d6a9fcc1fb44dd10e11d9552e314d048e33e428c169acd12b"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413123738.24343731718/UseSmileIDML.xcframework.zip",
            checksum: "70856873b0f5989f521bbe5457aaa971fe681765fe3ee7f3f4fc839a6deed574"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413123738.24343731718/UseSmileIDVisionFace.xcframework.zip",
            checksum: "6abb44b1ed0db63c9e7b8d175e904288deb57eaca4e021c8c3a6b38119f662cc"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413123738.24343731718/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "b5665fbf7bc2dfe446e68d4a7b15fbea14cdc41db4f15dcbd04aa822f4dcd6c3"
        ),
    ]
)
