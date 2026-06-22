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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622115114.27950545543/UseSmileID.xcframework.zip",
            checksum: "faef9e9867028f168f924f5b4bb3bd03e92e2fbd791d404c105a2860d48897f8"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622115114.27950545543/UseSmileIDBridge.xcframework.zip",
            checksum: "ec71e498617681bf5b488c01a3dd52fd21f261ccff5a42e888de63de0b1d7de2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622115114.27950545543/UseSmileIDVisionFace.xcframework.zip",
            checksum: "af3bd4623ea9211c3f1bbed0884c7b13c2ae4ea2337637535e40a455a224ee33"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622115114.27950545543/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "c6afc075e04e18cce7ab9d6767403e451828d78ff5302f88cb983cfff9d5becf"
        ),
    ]
)
