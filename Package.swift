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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625172646.28188394239/UseSmileID.xcframework.zip",
            checksum: "a5de2111a48d2395ea20c9661b2d66d330433093cb10d1e979df07814fc17b26"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625172646.28188394239/UseSmileIDBridge.xcframework.zip",
            checksum: "1507fc611971560fb38e58f4442088faeee03ea4d110e3ab347dd32f23ccaba5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625172646.28188394239/UseSmileIDVisionFace.xcframework.zip",
            checksum: "80dab9c1f63f904599d4d5a17f3fffdbf002e274d9009b7a62d4f44c695bca47"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625172646.28188394239/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "c47450376621efa97f07f4e1e45765a22652d111a2ca486979ae69bc1eaf4dd0"
        ),
    ]
)
