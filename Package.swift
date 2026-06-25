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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625130157.28171990102/UseSmileID.xcframework.zip",
            checksum: "fba851924209e10220c1d906b7aa9d22923043f000576bb5ef7006c5ddbc36db"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625130157.28171990102/UseSmileIDBridge.xcframework.zip",
            checksum: "0498ec1bd5077bcdbcbd2bd6e93ec0027eec1923be49788160075e07bd596cfa"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625130157.28171990102/UseSmileIDVisionFace.xcframework.zip",
            checksum: "4a00341e3b756ff8a96c087b1c28e42cdd2ec2dcca86982ddeac68fdc05a3774"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260625130157.28171990102/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "6108edd3ff1245b735bdfeaff0870a8b2daaf2e8b84c2ab088913456798dae1f"
        ),
    ]
)
