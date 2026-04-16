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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416184325.24527745235/UseSmileID.xcframework.zip",
            checksum: "8718707ef38a09001ca4592923896c942cc27886a2ba24fcd44ab6629ea4f8f2"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416184325.24527745235/UseSmileIDML.xcframework.zip",
            checksum: "b6fac300e5b582a2cb97b169fb756d1c56b7933c5f14391cc1623b12bb668ef9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416184325.24527745235/UseSmileIDVisionFace.xcframework.zip",
            checksum: "4dbb49875e8b97f705800dc5e216d83468f27126c94c1bef7c893c6785e9bd86"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416184325.24527745235/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "465ad4e255a17a9fbed124eb96a4cdbe0a01ae978114dca09e1d1ceb8e4249df"
        ),
    ]
)
