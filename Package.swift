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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413120451.24342375477/UseSmileID.xcframework.zip",
            checksum: "ce9784f588d3678298a38da2c22cd00ec5e5d07250bd0921df02989cf5ac41af"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413120451.24342375477/UseSmileIDML.xcframework.zip",
            checksum: "679748ee1ee050ce500b20aac4631fbf9cc844c82c98df0170180c448d038222"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413120451.24342375477/UseSmileIDVisionFace.xcframework.zip",
            checksum: "a131cc3c18ecfc93dfae2ac9738395362f8940a1ab7c078c2cc592ccaaa0244e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260413120451.24342375477/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "43f3396bca0eb8e8e173ea9a56e7679e850de26d8d228523bcbc4f3004a1b78a"
        ),
    ]
)
