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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260702114111.28587233131/UseSmileID.xcframework.zip",
            checksum: "3fefcba7e12f24268d1c9a9be3d76a19c1ce0b4cd1c8eeaf7c956a2910c8858a"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260702114111.28587233131/UseSmileIDBridge.xcframework.zip",
            checksum: "cdbfdd029f05b664414b7400872f29c0293dd12b5d9ccaac881b4ae8887b917d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260702114111.28587233131/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e6921d8f3c6a30fe776f81ff4e244de4de6fd89574e08222d36ac53879792ea3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260702114111.28587233131/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "125e9370714bcd5515dd0e2c2036d161c9ccee5d79c78744a7c659bc3882fe3a"
        ),
    ]
)
