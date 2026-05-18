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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260518144129.26040574199/UseSmileID.xcframework.zip",
            checksum: "8e0307765bb7a526c7de1acec23bef51099c41f210cf27ced73cd168c9afc0ad"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260518144129.26040574199/UseSmileIDML.xcframework.zip",
            checksum: "65c23860152eeab88f3a80555be5fe0dd3d9b9912d09d1e32611325d94bcf4ac"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260518144129.26040574199/UseSmileIDVisionFace.xcframework.zip",
            checksum: "dc412142e7940badc1fdce42025ad1881586bb93bcf9aed99022d35efb07fbfd"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260518144129.26040574199/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "be500b50c8ec467be525fdd28d957fd4fc3b496b91e173fbc5e9f6a82328c8d6"
        ),
    ]
)
