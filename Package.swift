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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260515112859.25915422721/UseSmileID.xcframework.zip",
            checksum: "11e6cd1feb2cab5f63c2c0831743cc5f2e16e88da8548c8a0f7394b60ff6cb10"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260515112859.25915422721/UseSmileIDML.xcframework.zip",
            checksum: "88cc6c48abd4680b93e91da0bd09005cdead704a705a962b6860230a45e42f96"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260515112859.25915422721/UseSmileIDVisionFace.xcframework.zip",
            checksum: "44c3688dacc22ed3e5d0ff60cda685a2f60b6d9b179bae1f89f46e55b96573cb"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260515112859.25915422721/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "f049f7aa70b48a85c5c67debdbc3e268a2e09ed2b9118895c2aceca82930353b"
        ),
    ]
)
