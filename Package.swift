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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260414171023.24412615658/UseSmileID.xcframework.zip",
            checksum: "8c6a19995718199e732336e0a2b9c44bfbaa6af9310801ec90e0d4a1192371d0"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260414171023.24412615658/UseSmileIDML.xcframework.zip",
            checksum: "989c1b7901e9f4ef32efd9d6da20bb7fe083657f98e2824d26daad38e355490d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260414171023.24412615658/UseSmileIDVisionFace.xcframework.zip",
            checksum: "20c401f87ab2e4a2b8078b33b54b91bc03a885cc46ef81fbcebd54548af08c23"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260414171023.24412615658/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4f6740671960dc173f8cc720993ac11de1992ced6152f9bd9cc7cb0e1f7124d7"
        ),
    ]
)
