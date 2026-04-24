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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424205448.24911421946/UseSmileID.xcframework.zip",
            checksum: "2b36195ac8cf7da14b162606bae08a6926b92b72015f763906d7a5ed631358f8"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424205448.24911421946/UseSmileIDML.xcframework.zip",
            checksum: "e5441f09a22b69e2e27300fd5b25a48ef7c27994e1721ee9a0cafacf3ae6f3d3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424205448.24911421946/UseSmileIDVisionFace.xcframework.zip",
            checksum: "95b69b20409f32449e8b484bfd927f48e9ffe22ed6972bb62b25300dc29b5b0f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424205448.24911421946/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "5b2ce3709e26cc35572d12d71940691a4c3cbfb63f6d245b31d6cb355bdbb86e"
        ),
    ]
)
