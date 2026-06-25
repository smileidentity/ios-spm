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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625055808.28085859423/UseSmileID.xcframework.zip",
            checksum: "001f9e47afe632519933715ad7c92ff97dcafdbe5f57f55524db706759dbdd33"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625055808.28085859423/UseSmileIDBridge.xcframework.zip",
            checksum: "8d5b9c3bf20c5206c0afc394ee1ccd401ca502adf6895b90b2610fb24a3cc519"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625055808.28085859423/UseSmileIDVisionFace.xcframework.zip",
            checksum: "9072c3a3c1b6bfd1332cef80c4546c7d6f8493e8f7e9745f1d3ef950cc8849a0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625055808.28085859423/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "e0d59535a693ed6ecced7c40f437a807804c7928d62b4425e60fa580cc595912"
        ),
    ]
)
