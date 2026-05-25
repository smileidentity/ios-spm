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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525200735.26417829073/UseSmileID.xcframework.zip",
            checksum: "bdf4b42d231e616ba9ee2dedbb0e649218e9dfe5402067aca8a5473ada62b4eb"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525200735.26417829073/UseSmileIDML.xcframework.zip",
            checksum: "69d9bc4e1d9b8bc7e796ab62ad4c8dcb800efbaefbc3741a73df49786bf45b7d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525200735.26417829073/UseSmileIDVisionFace.xcframework.zip",
            checksum: "f34875b91e66f1559033a1d794aeb0087e89e233034d4c269ad7f5ec1534e616"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525200735.26417829073/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "8ec001433c371c8851260fdea55fb5b3a7606dc1f5f49d4ae350e60bf3f7dd23"
        ),
    ]
)
