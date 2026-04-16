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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416095921.24504085055/UseSmileID.xcframework.zip",
            checksum: "630028b061d28fb54cb74767188813c29bd7522cf3ac975409f2e40d575d1342"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416095921.24504085055/UseSmileIDML.xcframework.zip",
            checksum: "5473c656f46eab486d38bda454730dc5264989660a1ca2d8870c149133407894"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416095921.24504085055/UseSmileIDVisionFace.xcframework.zip",
            checksum: "8185e20c869103d33c4554f56987dd89895fa533a6741e076c075dfbb2ac8c50"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260416095921.24504085055/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "fad61a9b4c3a4070eba3082381896990478835b6181e64219a16a37e4e093380"
        ),
    ]
)
