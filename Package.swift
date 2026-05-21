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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521193929.26248826519/UseSmileID.xcframework.zip",
            checksum: "56d87c31f75adf13e3d11e387a7ac100df324dae8ef54cb8297c084f4a5d5793"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521193929.26248826519/UseSmileIDML.xcframework.zip",
            checksum: "77b9969172e6f4d20d52d5bd54b7ce0dd976f471fa297e2d94f816770e74fbc7"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521193929.26248826519/UseSmileIDVisionFace.xcframework.zip",
            checksum: "dd21269b5193fec0624b6dfe2d6ff63ab4fe94c7647a5561f19370c1eecd1f03"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521193929.26248826519/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "6854e95a355e0fac6eb3a25a62ebd7909cb7652bc4f237d0784c6c6b80f8a413"
        ),
    ]
)
