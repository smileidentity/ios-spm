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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728205822.30398386979/UseSmileID.xcframework.zip",
            checksum: "fa52908516ff349544e427185c7253c791f36a2ae1ef620be1a348350d942d4d"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728205822.30398386979/UseSmileIDBridge.xcframework.zip",
            checksum: "3212aaaeffd39b69f10961116bb1e766898eb2f0ea4ca35c2dda9d00a5376ea5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728205822.30398386979/UseSmileIDVisionFace.xcframework.zip",
            checksum: "867ac764819641c0ac07b31145ddaebb04549d527f0b21718073a59d0c21965a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728205822.30398386979/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "6eeb8ac9256e667fc4d5c36e0a62b85268737c89e838aea55962437a7b8cff13"
        ),
    ]
)
