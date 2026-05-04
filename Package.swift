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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260504183104.25336194376/UseSmileID.xcframework.zip",
            checksum: "a422e3fca0638e58438c0ec0530431ae7a2dbaca7f09caac59bb170a1647ee77"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260504183104.25336194376/UseSmileIDML.xcframework.zip",
            checksum: "224a9c94024225e4c6ca2c454c431f087f0a29ebd8c82d7f4441d68124a2c6ce"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260504183104.25336194376/UseSmileIDVisionFace.xcframework.zip",
            checksum: "4992ea64eee141d9f8e71995d86545753d37a7c998fb294ddca70c7a222dbec6"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260504183104.25336194376/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "0dec1fc385956676cd6008d1d400ce5afec684dcee1e7ef2f502a5348979baee"
        ),
    ]
)
