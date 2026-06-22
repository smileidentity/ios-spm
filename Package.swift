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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622101757.27945716073/UseSmileID.xcframework.zip",
            checksum: "2c89c28282f65a9567a6188b8f882a11c4bb6770137251cde3391eceae7e4f27"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622101757.27945716073/UseSmileIDBridge.xcframework.zip",
            checksum: "679d7dc64dce874c83bf15a2da2d53ebc568127a31dbdb5b560c3ba3fd75a8db"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622101757.27945716073/UseSmileIDVisionFace.xcframework.zip",
            checksum: "ee676b9c11b290769057b0b2f34d55b2c2b14cd06c93690328bb677994589907"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622101757.27945716073/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "9d1a8de90e07e3536a1fc9de9dddd0835272e819f1f4924735ecc7676cb08466"
        ),
    ]
)
