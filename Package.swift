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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714163346.29350152615/UseSmileID.xcframework.zip",
            checksum: "2408c404c0882288795f86cf54bbbbb7aed5421f10af216f40bc80c26466cb17"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714163346.29350152615/UseSmileIDBridge.xcframework.zip",
            checksum: "1e81ab9e01dfb32554077e8f95bfcd3cbc244365361ff6ab3c5e2183abd48eed"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714163346.29350152615/UseSmileIDVisionFace.xcframework.zip",
            checksum: "8c99cfdb1ce47cff8143db37d2f9b996b54a64e45494b91c950258b9c6d3a7a0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714163346.29350152615/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "712bb676f2764206f93022a882a99a8439ab1d0302851240f12c10dc5291023c"
        ),
    ]
)
