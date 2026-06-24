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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624121709.28097819098/UseSmileID.xcframework.zip",
            checksum: "06876cdfaa9fab1ef36d77215428c4dea255df95b6bdcde8fcbee677c5efa7d7"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624121709.28097819098/UseSmileIDBridge.xcframework.zip",
            checksum: "1d207b11c753065237e241e71b40f29b7f841278092854b61fb24e282af333af"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624121709.28097819098/UseSmileIDVisionFace.xcframework.zip",
            checksum: "1bde929602e542bed664606966ff5e333812bc216aecfe6573721dbefccd9c07"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260624121709.28097819098/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "c0e024427a40750b11e264c6dc81a81bb2fbc0db06ecd8beb7749fe7020480c0"
        ),
    ]
)
