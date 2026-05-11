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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511102013.25664303182/UseSmileID.xcframework.zip",
            checksum: "ed24f860a096c505c6a8e4129edc3ad0204b8e73222e90ae0274043c32820826"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511102013.25664303182/UseSmileIDML.xcframework.zip",
            checksum: "9befb0e336bb8a7abb297062a13268e33a2ddaf6f3264a833ef64372ba3a41c9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511102013.25664303182/UseSmileIDVisionFace.xcframework.zip",
            checksum: "b3b683e42b93b94b537de3f204294266780d8e3df761a72b9f2271c9a58e24bb"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511102013.25664303182/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "bcba5bf6e6f4e53c3b5e4d57e654b902891db74fe1cf2664665a9aa3ad390734"
        ),
    ]
)
