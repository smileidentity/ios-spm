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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260512103149.25728828719/UseSmileID.xcframework.zip",
            checksum: "6dbcee07948e0741b4fd46ab60f09022d6e67d5bcd8e0db0b782f64df562ac16"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260512103149.25728828719/UseSmileIDML.xcframework.zip",
            checksum: "194fe9cd6105f7badee6e4cd33ec4deeb207ec665d2228f561f2724616d8485c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260512103149.25728828719/UseSmileIDVisionFace.xcframework.zip",
            checksum: "67f80d7cb819e18c1e72133c93d7f8bcf9e30887daf72602021a433a8cf10495"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260512103149.25728828719/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "eaae227d6126e4520bd2be6bd00707b222d87995ded111089e9ab828efdd22c1"
        ),
    ]
)
