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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624175050.28118452205/UseSmileID.xcframework.zip",
            checksum: "32dfb969f7f7c836bf62241ca69735e6c39e80776e64a16c5c8ee5521334a346"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624175050.28118452205/UseSmileIDBridge.xcframework.zip",
            checksum: "f5de077245fef41bd207407b3ddadbdf7981fdc9a84125673e14b3a3f0e175fb"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624175050.28118452205/UseSmileIDVisionFace.xcframework.zip",
            checksum: "aa63443c988615143980ef132b84fb4a330e1cb010213fb5b0423a978d4081d3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624175050.28118452205/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "25c27d672a674fd712e65d62d821a5bea343b3ea09a0aaf7db2763608e7b84bb"
        ),
    ]
)
