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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402144336.23906197916/UseSmileID.xcframework.zip",
            checksum: "719a0316d4b3be4369e4bb7d008e9ab72467446f20bf7d25a81e0ad86f94e97b"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402144336.23906197916/UseSmileIDML.xcframework.zip",
            checksum: "929300a84a6e4fbb0207978c067643c03d3a4165ffb67b695d400a123c2a1b9f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402144336.23906197916/UseSmileIDVisionFace.xcframework.zip",
            checksum: "8f7a91332bed8fa51583b455e4e22c8892b09474f3a8712d5be7a8793029ace9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402144336.23906197916/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "f66230b4334c65b9b4f319cf4c84333e113177d2b4f8c8f01f4f4d5404b3be00"
        ),
    ]
)
