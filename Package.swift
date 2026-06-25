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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625130444.28172158015/UseSmileID.xcframework.zip",
            checksum: "164bd90fa121361072dc96ac5d37be623438d63022df998b80076c4d7b44ff6e"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625130444.28172158015/UseSmileIDBridge.xcframework.zip",
            checksum: "144964386e5a48eefe9f005ae2438e24436daa49a335b76f1e077c690fd74590"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625130444.28172158015/UseSmileIDVisionFace.xcframework.zip",
            checksum: "c5e9d1649d3896b0766bc5c70795666baa32a691c0a21aaadc4407d29c0f763e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625130444.28172158015/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "bdbff781fac731d24aff8ba24af6e21ea3abb2e032677856112a6cb9aa76b9d7"
        ),
    ]
)
