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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507154635.25506447569/UseSmileID.xcframework.zip",
            checksum: "4e15c33dabdb85c1921a5537a5bc413baf410fd5d247abaadadd188311bb56c3"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507154635.25506447569/UseSmileIDML.xcframework.zip",
            checksum: "da25e6287dd26556c54a76b3cf21a76e77453135623cc6a499a2988ec17a6cc3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507154635.25506447569/UseSmileIDVisionFace.xcframework.zip",
            checksum: "7b28aa8975d21799a035e28112331414472fb3532fb48e50918ee776e289376b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260507154635.25506447569/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4711a6be612fccb229ad6a91687348f7a6340baeb686734e4a144d65aae396c9"
        ),
    ]
)
