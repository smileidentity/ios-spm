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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260621155046.27909514217/UseSmileID.xcframework.zip",
            checksum: "cb79ed57052064a573aaa1eafef0dcbab6df255823d40520e275fbaf0ee8b343"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260621155046.27909514217/UseSmileIDBridge.xcframework.zip",
            checksum: "7c19974845934301565ad666f13f465ea6ef5b562b0777bb9b3e73aae39e5ce4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260621155046.27909514217/UseSmileIDVisionFace.xcframework.zip",
            checksum: "9e14e258dbf0ef5c867bd1733a3390f60c4e5320d988ebf240fa6e35da4520ef"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260621155046.27909514217/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2252e2960585ce5e6c6c196703973386f974a4cb1ae510b8e98c7f1cdc694a70"
        ),
    ]
)
