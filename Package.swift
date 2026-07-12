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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712015710.29176014042/UseSmileID.xcframework.zip",
            checksum: "59522d0287a2f795354dfc424272c62b5e0e3ead369b2fd57179eba899dd84ef"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712015710.29176014042/UseSmileIDBridge.xcframework.zip",
            checksum: "4aac84fc8d72e2fe0abaa2ca2e1882ac5f6446d073efc17643a81d04c39492f8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712015710.29176014042/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d18c30316cddf62c4fc06088738d6b865f2c7d24882be56a94e53aad9002b117"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260712015710.29176014042/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "120dc8378be84e603b43107903d6bb54492a7bb90a55d9b1b9b811f8b15c8049"
        ),
    ]
)
