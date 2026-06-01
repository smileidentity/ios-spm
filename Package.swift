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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601165450.26769141362/UseSmileID.xcframework.zip",
            checksum: "188087312050f9e70fc07fb82d7fe34635cd2b471a498566aee8df7287a74e76"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601165450.26769141362/UseSmileIDBridge.xcframework.zip",
            checksum: "4fb569be89297ca9514ec680e8712224d51ea821c2cc9d7276e9bba469231b89"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601165450.26769141362/UseSmileIDVisionFace.xcframework.zip",
            checksum: "68e5441611ceb13f4bc78dcc99876b576388b55103bacac20af8217d939e9640"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260601165450.26769141362/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "6160f47171343ebc262cc7ebe4aa1b0d55d88730c344c4782b63a17a1cdc3d74"
        ),
    ]
)
